import ApiBase from "@/shared/api/api-base";

class HelloApi extends ApiBase {
  singularName = () => {
    return "hello";
  };

  pluralName = () => {
    return "hello";
  };
}

export default new HelloApi();
