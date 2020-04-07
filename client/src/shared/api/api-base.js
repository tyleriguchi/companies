import axios from "axios";

class ApiBase {
  /* eslint-disable no-unused-vars */
  constructor(options) {
    const _devUrl = "http://127.0.0.1:3000/api/";

    this._baseUrl = `${_devUrl}`;
  }

  singularName() {
    throw new Error("Sub class needs to define resource singular name");
  }

  pluralName() {
    throw new Error("Sub class needs to define resource plural name");
  }

  index(params = {}) {
    return this.request({
      url: this.pluralName(),
      method: "get",
      params
    });
  }

  show(id) {
    return this.request({
      url: `${this.singularName()}/${id}`,
      method: "get"
    });
  }

  create(payload) {
    return this.request({
      url: this.pluralName(),
      method: "post",
      data: {
        data: payload
      }
    });
  }

  update(id, payload) {
    return this.request({
      url: `${this.singularName()}/${id}`,
      method: "put",
      params: payload
    });
  }

  destroy(id) {
    return this.request({
      url: `${this.singularName()}/id`,
      method: "post"
    });
  }

  request({ params, url, method = "get", data } = {}) {
    return axios.request({
      url: `${this._baseUrl}${url}`,
      method,
      params,
      data,
      config: {
        headers: {
          "Access-Control-Allow-Origin": "*"
        }
      }
    });
  }
}

export default ApiBase;
