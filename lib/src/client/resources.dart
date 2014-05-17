part of manager_v1beta2_api;

class DeploymentsResource_ {

  final Client _client;

  DeploymentsResource_(Client client) :
      _client = client;

  /**
   * 
   *
   * [projectId]
   *
   * [region]
   *
   * [deploymentName]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String projectId, core.String region, core.String deploymentName, {core.Map optParams}) {
    var url = "{projectId}/regions/{region}/deployments/{deploymentName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (deploymentName == null) paramErrors.add("deploymentName is required");
    if (deploymentName != null) urlParams["deploymentName"] = deploymentName;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * 
   *
   * [projectId]
   *
   * [region]
   *
   * [deploymentName]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Deployment> get(core.String projectId, core.String region, core.String deploymentName, {core.Map optParams}) {
    var url = "{projectId}/regions/{region}/deployments/{deploymentName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (deploymentName == null) paramErrors.add("deploymentName is required");
    if (deploymentName != null) urlParams["deploymentName"] = deploymentName;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Deployment.fromJson(data));
  }

  /**
   * 
   *
   * [request] - Deployment to send in this request
   *
   * [projectId]
   *
   * [region]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Deployment> insert(Deployment request, core.String projectId, core.String region, {core.Map optParams}) {
    var url = "{projectId}/regions/{region}/deployments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Deployment.fromJson(data));
  }

  /**
   * 
   *
   * [projectId]
   *
   * [region]
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values are 0 to 100, inclusive. (Default: 50)
   *   Default: 50
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DeploymentsListResponse> list(core.String projectId, core.String region, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{projectId}/regions/{region}/deployments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DeploymentsListResponse.fromJson(data));
  }
}

class TemplatesResource_ {

  final Client _client;

  TemplatesResource_(Client client) :
      _client = client;

  /**
   * 
   *
   * [projectId]
   *
   * [templateName]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String projectId, core.String templateName, {core.Map optParams}) {
    var url = "{projectId}/templates/{templateName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (templateName == null) paramErrors.add("templateName is required");
    if (templateName != null) urlParams["templateName"] = templateName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * 
   *
   * [projectId]
   *
   * [templateName]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Template> get(core.String projectId, core.String templateName, {core.Map optParams}) {
    var url = "{projectId}/templates/{templateName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (templateName == null) paramErrors.add("templateName is required");
    if (templateName != null) urlParams["templateName"] = templateName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Template.fromJson(data));
  }

  /**
   * 
   *
   * [request] - Template to send in this request
   *
   * [projectId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Template> insert(Template request, core.String projectId, {core.Map optParams}) {
    var url = "{projectId}/templates";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Template.fromJson(data));
  }

  /**
   * 
   *
   * [projectId]
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values are 0 to 100, inclusive. (Default: 50)
   *   Default: 50
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TemplatesListResponse> list(core.String projectId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{projectId}/templates";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TemplatesListResponse.fromJson(data));
  }
}

