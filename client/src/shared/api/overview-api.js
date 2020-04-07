import ApiBase from "@/shared/api/api-base";

class OverviewApi extends ApiBase {
  singularName = () => {
    return "overview";
  };

  pluralName = () => {
    return "overview";
  };
}

export default new OverviewApi();
