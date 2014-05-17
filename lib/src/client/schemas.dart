part of manager_v1beta2_api;

/** A Compute Engine network accessConfig. Identical to the accessConfig on corresponding Compute Engine resource. */
class AccessConfig {

  /** Name of this access configuration. */
  core.String name;

  /** An external IP address associated with this instance. */
  core.String natIp;

  /** Type of this access configuration file. (Currently only ONE_TO_ONE_NAT is legal.) */
  core.String type;

  /** Create new AccessConfig from JSON data */
  AccessConfig.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("natIp")) {
      natIp = json["natIp"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AccessConfig */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (natIp != null) {
      output["natIp"] = natIp;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AccessConfig */
  core.String toString() => JSON.encode(this.toJson());

}

/** An Action encapsulates a set of commands as a single runnable module with additional information needed during run-time. */
class Action {

  /** A list of commands to run sequentially for this action. */
  core.List<core.String> commands;

  /** The timeout in milliseconds for this action to run. */
  core.int timeoutMs;

  /** Create new Action from JSON data */
  Action.fromJson(core.Map json) {
    if (json.containsKey("commands")) {
      commands = json["commands"].toList();
    }
    if (json.containsKey("timeoutMs")) {
      timeoutMs = json["timeoutMs"];
    }
  }

  /** Create JSON Object for Action */
  core.Map toJson() {
    var output = new core.Map();

    if (commands != null) {
      output["commands"] = commands.toList();
    }
    if (timeoutMs != null) {
      output["timeoutMs"] = timeoutMs;
    }

    return output;
  }

  /** Return String representation of Action */
  core.String toString() => JSON.encode(this.toJson());

}

/** An allowed port resource. */
class AllowedRule {

  /** ?tcp?, ?udp? or ?icmp? */
  core.String IPProtocol;

  /** List of ports or port ranges (Example inputs include: ["22"], [?33?, "12345-12349"]. */
  core.List<core.String> ports;

  /** Create new AllowedRule from JSON data */
  AllowedRule.fromJson(core.Map json) {
    if (json.containsKey("IPProtocol")) {
      IPProtocol = json["IPProtocol"];
    }
    if (json.containsKey("ports")) {
      ports = json["ports"].toList();
    }
  }

  /** Create JSON Object for AllowedRule */
  core.Map toJson() {
    var output = new core.Map();

    if (IPProtocol != null) {
      output["IPProtocol"] = IPProtocol;
    }
    if (ports != null) {
      output["ports"] = ports.toList();
    }

    return output;
  }

  /** Return String representation of AllowedRule */
  core.String toString() => JSON.encode(this.toJson());

}

class AutoscalingModule {

  core.int coolDownPeriodSec;

  core.String description;

  core.int maxNumReplicas;

  core.int minNumReplicas;

  core.String signalType;

  core.String targetModule;

  /** target_utilization should be in range [0,1]. */
  core.num targetUtilization;

  /** Create new AutoscalingModule from JSON data */
  AutoscalingModule.fromJson(core.Map json) {
    if (json.containsKey("coolDownPeriodSec")) {
      coolDownPeriodSec = json["coolDownPeriodSec"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("maxNumReplicas")) {
      maxNumReplicas = json["maxNumReplicas"];
    }
    if (json.containsKey("minNumReplicas")) {
      minNumReplicas = json["minNumReplicas"];
    }
    if (json.containsKey("signalType")) {
      signalType = json["signalType"];
    }
    if (json.containsKey("targetModule")) {
      targetModule = json["targetModule"];
    }
    if (json.containsKey("targetUtilization")) {
      targetUtilization = json["targetUtilization"];
    }
  }

  /** Create JSON Object for AutoscalingModule */
  core.Map toJson() {
    var output = new core.Map();

    if (coolDownPeriodSec != null) {
      output["coolDownPeriodSec"] = coolDownPeriodSec;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (maxNumReplicas != null) {
      output["maxNumReplicas"] = maxNumReplicas;
    }
    if (minNumReplicas != null) {
      output["minNumReplicas"] = minNumReplicas;
    }
    if (signalType != null) {
      output["signalType"] = signalType;
    }
    if (targetModule != null) {
      output["targetModule"] = targetModule;
    }
    if (targetUtilization != null) {
      output["targetUtilization"] = targetUtilization;
    }

    return output;
  }

  /** Return String representation of AutoscalingModule */
  core.String toString() => JSON.encode(this.toJson());

}

class AutoscalingModuleStatus {

  /** [Output Only] The URL of the corresponding Autoscaling configuration. */
  core.String autoscalingConfigUrl;

  /** Create new AutoscalingModuleStatus from JSON data */
  AutoscalingModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("autoscalingConfigUrl")) {
      autoscalingConfigUrl = json["autoscalingConfigUrl"];
    }
  }

  /** Create JSON Object for AutoscalingModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (autoscalingConfigUrl != null) {
      output["autoscalingConfigUrl"] = autoscalingConfigUrl;
    }

    return output;
  }

  /** Return String representation of AutoscalingModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** [Output Only] The current state of a replica or module. */
class DeployState {

  /** [Output Only] Human readable details about the current state. */
  core.String details;

  /** [Output Only] The status of the deployment. Possible values include: 
- UNKNOWN
- DEPLOYING
- DEPLOYED
- DEPLOYMENT_FAILED
- DELETING
- DELETED
- DELETE_FAILED */
  core.String status;

  /** Create new DeployState from JSON data */
  DeployState.fromJson(core.Map json) {
    if (json.containsKey("details")) {
      details = json["details"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for DeployState */
  core.Map toJson() {
    var output = new core.Map();

    if (details != null) {
      output["details"] = details;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of DeployState */
  core.String toString() => JSON.encode(this.toJson());

}

/** A deployment represents a physical instantiation of a Template. */
class Deployment {

  /** [Output Only] The time when this deployment was created. */
  core.String creationDate;

  /** A user-supplied description of this Deployment. */
  core.String description;

  /** [Output Only] List of status for the modules in this deployment. */
  core.Map<core.String, ModuleStatus> modules;

  /** Name of this deployment. The name must conform to the following regular expression: [a-zA-Z0-9-_]{1,64} */
  core.String name;

  /** The set of parameter overrides to apply to the corresponding Template before deploying. */
  core.List<ParamOverride> overrides;

  /** [Output Only] Current status of this deployment. */
  DeployState state;

  /** The name of the Template on which this deployment is based. */
  core.String templateName;

  /** Create new Deployment from JSON data */
  Deployment.fromJson(core.Map json) {
    if (json.containsKey("creationDate")) {
      creationDate = json["creationDate"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("modules")) {
      modules = _mapMap(json["modules"], (modulesItem) => new ModuleStatus.fromJson(modulesItem));
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("overrides")) {
      overrides = json["overrides"].map((overridesItem) => new ParamOverride.fromJson(overridesItem)).toList();
    }
    if (json.containsKey("state")) {
      state = new DeployState.fromJson(json["state"]);
    }
    if (json.containsKey("templateName")) {
      templateName = json["templateName"];
    }
  }

  /** Create JSON Object for Deployment */
  core.Map toJson() {
    var output = new core.Map();

    if (creationDate != null) {
      output["creationDate"] = creationDate;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (modules != null) {
      output["modules"] = _mapMap(modules, (modulesItem) => modulesItem.toJson());
    }
    if (name != null) {
      output["name"] = name;
    }
    if (overrides != null) {
      output["overrides"] = overrides.map((overridesItem) => overridesItem.toJson()).toList();
    }
    if (state != null) {
      output["state"] = state.toJson();
    }
    if (templateName != null) {
      output["templateName"] = templateName;
    }

    return output;
  }

  /** Return String representation of Deployment */
  core.String toString() => JSON.encode(this.toJson());

}

class DeploymentsListResponse {

  core.String nextPageToken;

  core.List<Deployment> resources;

  /** Create new DeploymentsListResponse from JSON data */
  DeploymentsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new Deployment.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for DeploymentsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DeploymentsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** How to attach a disk to a Replica. */
class DiskAttachment {

  /** The device name of this disk. */
  core.String deviceName;

  /** A zero-based index to assign to this disk, where 0 is reserved for the boot disk. If not specified, this is assigned by the server. */
  core.int index;

  /** Create new DiskAttachment from JSON data */
  DiskAttachment.fromJson(core.Map json) {
    if (json.containsKey("deviceName")) {
      deviceName = json["deviceName"];
    }
    if (json.containsKey("index")) {
      index = json["index"];
    }
  }

  /** Create JSON Object for DiskAttachment */
  core.Map toJson() {
    var output = new core.Map();

    if (deviceName != null) {
      output["deviceName"] = deviceName;
    }
    if (index != null) {
      output["index"] = index;
    }

    return output;
  }

  /** Return String representation of DiskAttachment */
  core.String toString() => JSON.encode(this.toJson());

}

/** An environment variable. */
class EnvVariable {

  /** Whether this variable is hidden or visible. */
  core.bool hidden;

  /** Value of the environment variable. */
  core.String value;

  /** Create new EnvVariable from JSON data */
  EnvVariable.fromJson(core.Map json) {
    if (json.containsKey("hidden")) {
      hidden = json["hidden"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for EnvVariable */
  core.Map toJson() {
    var output = new core.Map();

    if (hidden != null) {
      output["hidden"] = hidden;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of EnvVariable */
  core.String toString() => JSON.encode(this.toJson());

}

/** A pre-existing persistent disk that will be attached to every Replica in the Pool. */
class ExistingDisk {

  /** Optional. How the disk will be attached to the Replica. */
  DiskAttachment attachment;

  /** The fully-qualified URL of the Persistent Disk resource. It must be in the same zone as the Pool. */
  core.String source;

  /** Create new ExistingDisk from JSON data */
  ExistingDisk.fromJson(core.Map json) {
    if (json.containsKey("attachment")) {
      attachment = new DiskAttachment.fromJson(json["attachment"]);
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
  }

  /** Create JSON Object for ExistingDisk */
  core.Map toJson() {
    var output = new core.Map();

    if (attachment != null) {
      output["attachment"] = attachment.toJson();
    }
    if (source != null) {
      output["source"] = source;
    }

    return output;
  }

  /** Return String representation of ExistingDisk */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Firewall resource */
class FirewallModule {

  /** The allowed ports or port ranges. */
  core.List<AllowedRule> allowed;

  /** The description of the firewall (optional) */
  core.String description;

  /** The NetworkModule to which this firewall should apply. If not specified, or if specified as 'default', this firewall will be applied to the 'default' network. */
  core.String network;

  /** Source IP ranges to apply this firewall to, see the GCE Spec for details on syntax */
  core.List<core.String> sourceRanges;

  /** Source Tags to apply this firewall to, see the GCE Spec for details on syntax */
  core.List<core.String> sourceTags;

  /** Target Tags to apply this firewall to, see the GCE Spec for details on syntax */
  core.List<core.String> targetTags;

  /** Create new FirewallModule from JSON data */
  FirewallModule.fromJson(core.Map json) {
    if (json.containsKey("allowed")) {
      allowed = json["allowed"].map((allowedItem) => new AllowedRule.fromJson(allowedItem)).toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("sourceRanges")) {
      sourceRanges = json["sourceRanges"].toList();
    }
    if (json.containsKey("sourceTags")) {
      sourceTags = json["sourceTags"].toList();
    }
    if (json.containsKey("targetTags")) {
      targetTags = json["targetTags"].toList();
    }
  }

  /** Create JSON Object for FirewallModule */
  core.Map toJson() {
    var output = new core.Map();

    if (allowed != null) {
      output["allowed"] = allowed.map((allowedItem) => allowedItem.toJson()).toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (sourceRanges != null) {
      output["sourceRanges"] = sourceRanges.toList();
    }
    if (sourceTags != null) {
      output["sourceTags"] = sourceTags.toList();
    }
    if (targetTags != null) {
      output["targetTags"] = targetTags.toList();
    }

    return output;
  }

  /** Return String representation of FirewallModule */
  core.String toString() => JSON.encode(this.toJson());

}

class FirewallModuleStatus {

  /** [Output Only] The URL of the corresponding Firewall resource. */
  core.String firewallUrl;

  /** Create new FirewallModuleStatus from JSON data */
  FirewallModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("firewallUrl")) {
      firewallUrl = json["firewallUrl"];
    }
  }

  /** Create JSON Object for FirewallModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (firewallUrl != null) {
      output["firewallUrl"] = firewallUrl;
    }

    return output;
  }

  /** Return String representation of FirewallModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

class HealthCheckModule {

  core.int checkIntervalSec;

  core.String description;

  core.int healthyThreshold;

  core.String host;

  core.String path;

  core.int port;

  core.int timeoutSec;

  core.int unhealthyThreshold;

  /** Create new HealthCheckModule from JSON data */
  HealthCheckModule.fromJson(core.Map json) {
    if (json.containsKey("checkIntervalSec")) {
      checkIntervalSec = json["checkIntervalSec"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("healthyThreshold")) {
      healthyThreshold = json["healthyThreshold"];
    }
    if (json.containsKey("host")) {
      host = json["host"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
    if (json.containsKey("port")) {
      port = json["port"];
    }
    if (json.containsKey("timeoutSec")) {
      timeoutSec = json["timeoutSec"];
    }
    if (json.containsKey("unhealthyThreshold")) {
      unhealthyThreshold = json["unhealthyThreshold"];
    }
  }

  /** Create JSON Object for HealthCheckModule */
  core.Map toJson() {
    var output = new core.Map();

    if (checkIntervalSec != null) {
      output["checkIntervalSec"] = checkIntervalSec;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (healthyThreshold != null) {
      output["healthyThreshold"] = healthyThreshold;
    }
    if (host != null) {
      output["host"] = host;
    }
    if (path != null) {
      output["path"] = path;
    }
    if (port != null) {
      output["port"] = port;
    }
    if (timeoutSec != null) {
      output["timeoutSec"] = timeoutSec;
    }
    if (unhealthyThreshold != null) {
      output["unhealthyThreshold"] = unhealthyThreshold;
    }

    return output;
  }

  /** Return String representation of HealthCheckModule */
  core.String toString() => JSON.encode(this.toJson());

}

class HealthCheckModuleStatus {

  /** [Output Only] The HealthCheck URL. */
  core.String healthCheckUrl;

  /** Create new HealthCheckModuleStatus from JSON data */
  HealthCheckModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("healthCheckUrl")) {
      healthCheckUrl = json["healthCheckUrl"];
    }
  }

  /** Create JSON Object for HealthCheckModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (healthCheckUrl != null) {
      output["healthCheckUrl"] = healthCheckUrl;
    }

    return output;
  }

  /** Return String representation of HealthCheckModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

class LbModule {

  core.String description;

  core.List<core.String> healthChecks;

  core.String ipAddress;

  core.String ipProtocol;

  core.String portRange;

  core.List<core.String> targetModules;

  /** Create new LbModule from JSON data */
  LbModule.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("healthChecks")) {
      healthChecks = json["healthChecks"].toList();
    }
    if (json.containsKey("ipAddress")) {
      ipAddress = json["ipAddress"];
    }
    if (json.containsKey("ipProtocol")) {
      ipProtocol = json["ipProtocol"];
    }
    if (json.containsKey("portRange")) {
      portRange = json["portRange"];
    }
    if (json.containsKey("targetModules")) {
      targetModules = json["targetModules"].toList();
    }
  }

  /** Create JSON Object for LbModule */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (healthChecks != null) {
      output["healthChecks"] = healthChecks.toList();
    }
    if (ipAddress != null) {
      output["ipAddress"] = ipAddress;
    }
    if (ipProtocol != null) {
      output["ipProtocol"] = ipProtocol;
    }
    if (portRange != null) {
      output["portRange"] = portRange;
    }
    if (targetModules != null) {
      output["targetModules"] = targetModules.toList();
    }

    return output;
  }

  /** Return String representation of LbModule */
  core.String toString() => JSON.encode(this.toJson());

}

class LbModuleStatus {

  /** [Output Only] The URL of the corresponding ForwardingRule in GCE. */
  core.String forwardingRuleUrl;

  /** [Output Only] The URL of the corresponding TargetPool resource in GCE. */
  core.String targetPoolUrl;

  /** Create new LbModuleStatus from JSON data */
  LbModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("forwardingRuleUrl")) {
      forwardingRuleUrl = json["forwardingRuleUrl"];
    }
    if (json.containsKey("targetPoolUrl")) {
      targetPoolUrl = json["targetPoolUrl"];
    }
  }

  /** Create JSON Object for LbModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (forwardingRuleUrl != null) {
      output["forwardingRuleUrl"] = forwardingRuleUrl;
    }
    if (targetPoolUrl != null) {
      output["targetPoolUrl"] = targetPoolUrl;
    }

    return output;
  }

  /** Return String representation of LbModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Compute Engine metadata entry. Identical to the metadata on the corresponding Compute Engine resource. */
class Metadata {

  /** The fingerprint of the metadata. */
  core.String fingerPrint;

  /** A list of metadata items. */
  core.List<MetadataItem> items;

  /** Create new Metadata from JSON data */
  Metadata.fromJson(core.Map json) {
    if (json.containsKey("fingerPrint")) {
      fingerPrint = json["fingerPrint"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new MetadataItem.fromJson(itemsItem)).toList();
    }
  }

  /** Create JSON Object for Metadata */
  core.Map toJson() {
    var output = new core.Map();

    if (fingerPrint != null) {
      output["fingerPrint"] = fingerPrint;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Metadata */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Compute Engine metadata item, defined as a key:value pair. Identical to the metadata on the corresponding Compute Engine resource. */
class MetadataItem {

  /** A metadata key. */
  core.String key;

  /** A metadata value. */
  core.String value;

  /** Create new MetadataItem from JSON data */
  MetadataItem.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for MetadataItem */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of MetadataItem */
  core.String toString() => JSON.encode(this.toJson());

}

/** A module in a configuration. A module represents a single homogeneous, possibly replicated task. */
class Module {

  AutoscalingModule autoscalingModule;

  FirewallModule firewallModule;

  HealthCheckModule healthCheckModule;

  LbModule lbModule;

  NetworkModule networkModule;

  ReplicaPoolModule replicaPoolModule;

  /** The type of this module. Valid values ("AUTOSCALING", "FIREWALL", "HEALTH_CHECK", "LOAD_BALANCING", "NETWORK", "REPLICA_POOL") */
  core.String type;

  /** Create new Module from JSON data */
  Module.fromJson(core.Map json) {
    if (json.containsKey("autoscalingModule")) {
      autoscalingModule = new AutoscalingModule.fromJson(json["autoscalingModule"]);
    }
    if (json.containsKey("firewallModule")) {
      firewallModule = new FirewallModule.fromJson(json["firewallModule"]);
    }
    if (json.containsKey("healthCheckModule")) {
      healthCheckModule = new HealthCheckModule.fromJson(json["healthCheckModule"]);
    }
    if (json.containsKey("lbModule")) {
      lbModule = new LbModule.fromJson(json["lbModule"]);
    }
    if (json.containsKey("networkModule")) {
      networkModule = new NetworkModule.fromJson(json["networkModule"]);
    }
    if (json.containsKey("replicaPoolModule")) {
      replicaPoolModule = new ReplicaPoolModule.fromJson(json["replicaPoolModule"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Module */
  core.Map toJson() {
    var output = new core.Map();

    if (autoscalingModule != null) {
      output["autoscalingModule"] = autoscalingModule.toJson();
    }
    if (firewallModule != null) {
      output["firewallModule"] = firewallModule.toJson();
    }
    if (healthCheckModule != null) {
      output["healthCheckModule"] = healthCheckModule.toJson();
    }
    if (lbModule != null) {
      output["lbModule"] = lbModule.toJson();
    }
    if (networkModule != null) {
      output["networkModule"] = networkModule.toJson();
    }
    if (replicaPoolModule != null) {
      output["replicaPoolModule"] = replicaPoolModule.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Module */
  core.String toString() => JSON.encode(this.toJson());

}

/** [Output Only] Aggregate status for a module. */
class ModuleStatus {

  /** [Output Only] The status of the AutoscalingModule, set for type AUTOSCALING. */
  AutoscalingModuleStatus autoscalingModuleStatus;

  /** [Output Only] The status of the FirewallModule, set for type FIREWALL. */
  FirewallModuleStatus firewallModuleStatus;

  /** [Output Only] The status of the HealthCheckModule, set for type HEALTH_CHECK. */
  HealthCheckModuleStatus healthCheckModuleStatus;

  /** [Output Only] The status of the LbModule, set for type LOAD_BALANCING. */
  LbModuleStatus lbModuleStatus;

  /** [Output Only] The status of the NetworkModule, set for type NETWORK. */
  NetworkModuleStatus networkModuleStatus;

  /** [Output Only] The status of the ReplicaPoolModule, set for type VM. */
  ReplicaPoolModuleStatus replicaPoolModuleStatus;

  /** [Output Only] The current state of the module. */
  DeployState state;

  /** [Output Only] The type of the module. */
  core.String type;

  /** Create new ModuleStatus from JSON data */
  ModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("autoscalingModuleStatus")) {
      autoscalingModuleStatus = new AutoscalingModuleStatus.fromJson(json["autoscalingModuleStatus"]);
    }
    if (json.containsKey("firewallModuleStatus")) {
      firewallModuleStatus = new FirewallModuleStatus.fromJson(json["firewallModuleStatus"]);
    }
    if (json.containsKey("healthCheckModuleStatus")) {
      healthCheckModuleStatus = new HealthCheckModuleStatus.fromJson(json["healthCheckModuleStatus"]);
    }
    if (json.containsKey("lbModuleStatus")) {
      lbModuleStatus = new LbModuleStatus.fromJson(json["lbModuleStatus"]);
    }
    if (json.containsKey("networkModuleStatus")) {
      networkModuleStatus = new NetworkModuleStatus.fromJson(json["networkModuleStatus"]);
    }
    if (json.containsKey("replicaPoolModuleStatus")) {
      replicaPoolModuleStatus = new ReplicaPoolModuleStatus.fromJson(json["replicaPoolModuleStatus"]);
    }
    if (json.containsKey("state")) {
      state = new DeployState.fromJson(json["state"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (autoscalingModuleStatus != null) {
      output["autoscalingModuleStatus"] = autoscalingModuleStatus.toJson();
    }
    if (firewallModuleStatus != null) {
      output["firewallModuleStatus"] = firewallModuleStatus.toJson();
    }
    if (healthCheckModuleStatus != null) {
      output["healthCheckModuleStatus"] = healthCheckModuleStatus.toJson();
    }
    if (lbModuleStatus != null) {
      output["lbModuleStatus"] = lbModuleStatus.toJson();
    }
    if (networkModuleStatus != null) {
      output["networkModuleStatus"] = networkModuleStatus.toJson();
    }
    if (replicaPoolModuleStatus != null) {
      output["replicaPoolModuleStatus"] = replicaPoolModuleStatus.toJson();
    }
    if (state != null) {
      output["state"] = state.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Compute Engine NetworkInterface resource. Identical to the NetworkInterface on the corresponding Compute Engine resource. */
class NetworkInterface {

  /** An array of configurations for this interface. This specifies how this interface is configured to interact with other network services */
  core.List<AccessConfig> accessConfigs;

  /** Name of the interface. */
  core.String name;

  /** The name of the NetworkModule to which this interface applies. If not specified, or specified as 'default', this will use the 'default' network. */
  core.String network;

  /** An optional IPV4 internal network address to assign to the instance for this network interface. */
  core.String networkIp;

  /** Create new NetworkInterface from JSON data */
  NetworkInterface.fromJson(core.Map json) {
    if (json.containsKey("accessConfigs")) {
      accessConfigs = json["accessConfigs"].map((accessConfigsItem) => new AccessConfig.fromJson(accessConfigsItem)).toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("networkIp")) {
      networkIp = json["networkIp"];
    }
  }

  /** Create JSON Object for NetworkInterface */
  core.Map toJson() {
    var output = new core.Map();

    if (accessConfigs != null) {
      output["accessConfigs"] = accessConfigs.map((accessConfigsItem) => accessConfigsItem.toJson()).toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (networkIp != null) {
      output["networkIp"] = networkIp;
    }

    return output;
  }

  /** Return String representation of NetworkInterface */
  core.String toString() => JSON.encode(this.toJson());

}

class NetworkModule {

  /** Required; The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. */
  core.String IPv4Range;

  /** The description of the network. */
  core.String description;

  /** An optional address that is used for default routing to other networks. This must be within the range specified by IPv4Range, and is typicall the first usable address in that range. If not specified, the default value is the first usable address in IPv4Range. */
  core.String gatewayIPv4;

  /** Create new NetworkModule from JSON data */
  NetworkModule.fromJson(core.Map json) {
    if (json.containsKey("IPv4Range")) {
      IPv4Range = json["IPv4Range"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("gatewayIPv4")) {
      gatewayIPv4 = json["gatewayIPv4"];
    }
  }

  /** Create JSON Object for NetworkModule */
  core.Map toJson() {
    var output = new core.Map();

    if (IPv4Range != null) {
      output["IPv4Range"] = IPv4Range;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (gatewayIPv4 != null) {
      output["gatewayIPv4"] = gatewayIPv4;
    }

    return output;
  }

  /** Return String representation of NetworkModule */
  core.String toString() => JSON.encode(this.toJson());

}

class NetworkModuleStatus {

  /** [Output Only] The URL of the corresponding Network resource. */
  core.String networkUrl;

  /** Create new NetworkModuleStatus from JSON data */
  NetworkModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("networkUrl")) {
      networkUrl = json["networkUrl"];
    }
  }

  /** Create JSON Object for NetworkModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (networkUrl != null) {
      output["networkUrl"] = networkUrl;
    }

    return output;
  }

  /** Return String representation of NetworkModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Persistent Disk resource that will be created and attached to each Replica in the Pool. Each Replica will have a unique persistent disk that is created and attached to that Replica. */
class NewDisk {

  /** How the disk will be attached to the Replica. */
  DiskAttachment attachment;

  /** If true, then this disk will be deleted when the instance is deleted. */
  core.bool autoDelete;

  /** If true, indicates that this is the root persistent disk. */
  core.bool boot;

  /** Create the new disk using these parameters. The name of the disk will be <instance_name>-<five_random_charactersgt;. */
  NewDiskInitializeParams initializeParams;

  /** Create new NewDisk from JSON data */
  NewDisk.fromJson(core.Map json) {
    if (json.containsKey("attachment")) {
      attachment = new DiskAttachment.fromJson(json["attachment"]);
    }
    if (json.containsKey("autoDelete")) {
      autoDelete = json["autoDelete"];
    }
    if (json.containsKey("boot")) {
      boot = json["boot"];
    }
    if (json.containsKey("initializeParams")) {
      initializeParams = new NewDiskInitializeParams.fromJson(json["initializeParams"]);
    }
  }

  /** Create JSON Object for NewDisk */
  core.Map toJson() {
    var output = new core.Map();

    if (attachment != null) {
      output["attachment"] = attachment.toJson();
    }
    if (autoDelete != null) {
      output["autoDelete"] = autoDelete;
    }
    if (boot != null) {
      output["boot"] = boot;
    }
    if (initializeParams != null) {
      output["initializeParams"] = initializeParams.toJson();
    }

    return output;
  }

  /** Return String representation of NewDisk */
  core.String toString() => JSON.encode(this.toJson());

}

/** Initialization parameters for creating a new disk. */
class NewDiskInitializeParams {

  /** The size of the created disk in gigabytes. */
  core.int diskSizeGb;

  /** The fully-qualified URL of a source image to use to create this disk. */
  core.String sourceImage;

  /** Create new NewDiskInitializeParams from JSON data */
  NewDiskInitializeParams.fromJson(core.Map json) {
    if (json.containsKey("diskSizeGb")) {
      diskSizeGb = (json["diskSizeGb"] is core.String) ? core.int.parse(json["diskSizeGb"]) : json["diskSizeGb"];
    }
    if (json.containsKey("sourceImage")) {
      sourceImage = json["sourceImage"];
    }
  }

  /** Create JSON Object for NewDiskInitializeParams */
  core.Map toJson() {
    var output = new core.Map();

    if (diskSizeGb != null) {
      output["diskSizeGb"] = diskSizeGb;
    }
    if (sourceImage != null) {
      output["sourceImage"] = sourceImage;
    }

    return output;
  }

  /** Return String representation of NewDiskInitializeParams */
  core.String toString() => JSON.encode(this.toJson());

}

/** A specification for overriding parameters in a Template that corresponds to the Deployment. */
class ParamOverride {

  /** A JSON Path expression that specifies which parameter should be overridden. */
  core.String path;

  /** The new value to assign to the overridden parameter. */
  core.String value;

  /** Create new ParamOverride from JSON data */
  ParamOverride.fromJson(core.Map json) {
    if (json.containsKey("path")) {
      path = json["path"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ParamOverride */
  core.Map toJson() {
    var output = new core.Map();

    if (path != null) {
      output["path"] = path;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ParamOverride */
  core.String toString() => JSON.encode(this.toJson());

}

class ReplicaPoolModule {

  /** A list of environment variables. */
  core.Map<core.String, EnvVariable> envVariables;

  /** The Health Checks to configure for the ReplicaPoolModule */
  core.List<core.String> healthChecks;

  /** Number of replicas in this module. */
  core.int numReplicas;

  /** Information for a ReplicaPoolModule. */
  ReplicaPoolParams replicaPoolParams;

  /** [Output Only] The name of the Resource View associated with a ReplicaPoolModule. This field will be generated by the service. */
  core.String resourceView;

  /** Create new ReplicaPoolModule from JSON data */
  ReplicaPoolModule.fromJson(core.Map json) {
    if (json.containsKey("envVariables")) {
      envVariables = _mapMap(json["envVariables"], (envVariablesItem) => new EnvVariable.fromJson(envVariablesItem));
    }
    if (json.containsKey("healthChecks")) {
      healthChecks = json["healthChecks"].toList();
    }
    if (json.containsKey("numReplicas")) {
      numReplicas = json["numReplicas"];
    }
    if (json.containsKey("replicaPoolParams")) {
      replicaPoolParams = new ReplicaPoolParams.fromJson(json["replicaPoolParams"]);
    }
    if (json.containsKey("resourceView")) {
      resourceView = json["resourceView"];
    }
  }

  /** Create JSON Object for ReplicaPoolModule */
  core.Map toJson() {
    var output = new core.Map();

    if (envVariables != null) {
      output["envVariables"] = _mapMap(envVariables, (envVariablesItem) => envVariablesItem.toJson());
    }
    if (healthChecks != null) {
      output["healthChecks"] = healthChecks.toList();
    }
    if (numReplicas != null) {
      output["numReplicas"] = numReplicas;
    }
    if (replicaPoolParams != null) {
      output["replicaPoolParams"] = replicaPoolParams.toJson();
    }
    if (resourceView != null) {
      output["resourceView"] = resourceView;
    }

    return output;
  }

  /** Return String representation of ReplicaPoolModule */
  core.String toString() => JSON.encode(this.toJson());

}

class ReplicaPoolModuleStatus {

  /** [Output Only] The URL of the associated ReplicaPool resource. */
  core.String replicaPoolUrl;

  /** [Output Only] The URL of the Resource Group associated with this ReplicaPool. */
  core.String resourceViewUrl;

  /** Create new ReplicaPoolModuleStatus from JSON data */
  ReplicaPoolModuleStatus.fromJson(core.Map json) {
    if (json.containsKey("replicaPoolUrl")) {
      replicaPoolUrl = json["replicaPoolUrl"];
    }
    if (json.containsKey("resourceViewUrl")) {
      resourceViewUrl = json["resourceViewUrl"];
    }
  }

  /** Create JSON Object for ReplicaPoolModuleStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (replicaPoolUrl != null) {
      output["replicaPoolUrl"] = replicaPoolUrl;
    }
    if (resourceViewUrl != null) {
      output["resourceViewUrl"] = resourceViewUrl;
    }

    return output;
  }

  /** Return String representation of ReplicaPoolModuleStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** Configuration information for a ReplicaPools resource. Specifying an item within will determine the ReplicaPools API version used for a ReplicaPoolModule. Only one may be specified. */
class ReplicaPoolParams {

  /** ReplicaPoolParams specifications for use with ReplicaPools v1beta1. */
  ReplicaPoolParamsV1Beta1 v1beta1;

  /** Create new ReplicaPoolParams from JSON data */
  ReplicaPoolParams.fromJson(core.Map json) {
    if (json.containsKey("v1beta1")) {
      v1beta1 = new ReplicaPoolParamsV1Beta1.fromJson(json["v1beta1"]);
    }
  }

  /** Create JSON Object for ReplicaPoolParams */
  core.Map toJson() {
    var output = new core.Map();

    if (v1beta1 != null) {
      output["v1beta1"] = v1beta1.toJson();
    }

    return output;
  }

  /** Return String representation of ReplicaPoolParams */
  core.String toString() => JSON.encode(this.toJson());

}

/** Configuration information for a ReplicaPools v1beta1 API resource. Directly maps to ReplicaPool InitTemplate. */
class ReplicaPoolParamsV1Beta1 {

  /** Whether these replicas should be restarted if they experience a failure. The default value is true. */
  core.bool autoRestart;

  /** The base name for instances within this ReplicaPool. */
  core.String baseInstanceName;

  /** Enables IP Forwarding */
  core.bool canIpForward;

  /** An optional textual description of the resource. */
  core.String description;

  /** A list of existing Persistent Disk resources to attach to each replica in the pool. Each disk will be attached in read-only mode to every replica. */
  core.List<ExistingDisk> disksToAttach;

  /** A list of Disk resources to create and attach to each Replica in the Pool. Currently, you can only define one disk and it must be a root persistent disk. Note that Replica Pool will create a root persistent disk for each replica. */
  core.List<NewDisk> disksToCreate;

  /** Name of the Action to be run during initialization of a ReplicaPoolModule. */
  core.String initAction;

  /** The machine type for this instance. Either a complete URL, or the resource name (e.g. n1-standard-1). */
  core.String machineType;

  /** The metadata key/value pairs assigned to this instance. */
  Metadata metadata;

  /** A list of network interfaces for the instance. Currently only one interface is supported by Google Compute Engine. */
  core.List<NetworkInterface> networkInterfaces;

  core.String onHostMaintenance;

  /** A list of Service Accounts to enable for this instance. */
  core.List<ServiceAccount> serviceAccounts;

  /** A list of tags to apply to the Google Compute Engine instance to identify resources. */
  Tag tags;

  /** The zone for this ReplicaPool. */
  core.String zone;

  /** Create new ReplicaPoolParamsV1Beta1 from JSON data */
  ReplicaPoolParamsV1Beta1.fromJson(core.Map json) {
    if (json.containsKey("autoRestart")) {
      autoRestart = json["autoRestart"];
    }
    if (json.containsKey("baseInstanceName")) {
      baseInstanceName = json["baseInstanceName"];
    }
    if (json.containsKey("canIpForward")) {
      canIpForward = json["canIpForward"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("disksToAttach")) {
      disksToAttach = json["disksToAttach"].map((disksToAttachItem) => new ExistingDisk.fromJson(disksToAttachItem)).toList();
    }
    if (json.containsKey("disksToCreate")) {
      disksToCreate = json["disksToCreate"].map((disksToCreateItem) => new NewDisk.fromJson(disksToCreateItem)).toList();
    }
    if (json.containsKey("initAction")) {
      initAction = json["initAction"];
    }
    if (json.containsKey("machineType")) {
      machineType = json["machineType"];
    }
    if (json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("networkInterfaces")) {
      networkInterfaces = json["networkInterfaces"].map((networkInterfacesItem) => new NetworkInterface.fromJson(networkInterfacesItem)).toList();
    }
    if (json.containsKey("onHostMaintenance")) {
      onHostMaintenance = json["onHostMaintenance"];
    }
    if (json.containsKey("serviceAccounts")) {
      serviceAccounts = json["serviceAccounts"].map((serviceAccountsItem) => new ServiceAccount.fromJson(serviceAccountsItem)).toList();
    }
    if (json.containsKey("tags")) {
      tags = new Tag.fromJson(json["tags"]);
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for ReplicaPoolParamsV1Beta1 */
  core.Map toJson() {
    var output = new core.Map();

    if (autoRestart != null) {
      output["autoRestart"] = autoRestart;
    }
    if (baseInstanceName != null) {
      output["baseInstanceName"] = baseInstanceName;
    }
    if (canIpForward != null) {
      output["canIpForward"] = canIpForward;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (disksToAttach != null) {
      output["disksToAttach"] = disksToAttach.map((disksToAttachItem) => disksToAttachItem.toJson()).toList();
    }
    if (disksToCreate != null) {
      output["disksToCreate"] = disksToCreate.map((disksToCreateItem) => disksToCreateItem.toJson()).toList();
    }
    if (initAction != null) {
      output["initAction"] = initAction;
    }
    if (machineType != null) {
      output["machineType"] = machineType;
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (networkInterfaces != null) {
      output["networkInterfaces"] = networkInterfaces.map((networkInterfacesItem) => networkInterfacesItem.toJson()).toList();
    }
    if (onHostMaintenance != null) {
      output["onHostMaintenance"] = onHostMaintenance;
    }
    if (serviceAccounts != null) {
      output["serviceAccounts"] = serviceAccounts.map((serviceAccountsItem) => serviceAccountsItem.toJson()).toList();
    }
    if (tags != null) {
      output["tags"] = tags.toJson();
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of ReplicaPoolParamsV1Beta1 */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Compute Engine service account, identical to the Compute Engine resource. */
class ServiceAccount {

  /** Service account email address. */
  core.String email;

  /** List of OAuth2 scopes to obtain for the service account. */
  core.List<core.String> scopes;

  /** Create new ServiceAccount from JSON data */
  ServiceAccount.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("scopes")) {
      scopes = json["scopes"].toList();
    }
  }

  /** Create JSON Object for ServiceAccount */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (scopes != null) {
      output["scopes"] = scopes.toList();
    }

    return output;
  }

  /** Return String representation of ServiceAccount */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Compute Engine Instance tag, identical to the tags on the corresponding Compute Engine Instance resource. */
class Tag {

  /** The fingerprint of the tag. */
  core.String fingerPrint;

  /** Items contained in this tag. */
  core.List<core.String> items;

  /** Create new Tag from JSON data */
  Tag.fromJson(core.Map json) {
    if (json.containsKey("fingerPrint")) {
      fingerPrint = json["fingerPrint"];
    }
    if (json.containsKey("items")) {
      items = json["items"].toList();
    }
  }

  /** Create JSON Object for Tag */
  core.Map toJson() {
    var output = new core.Map();

    if (fingerPrint != null) {
      output["fingerPrint"] = fingerPrint;
    }
    if (items != null) {
      output["items"] = items.toList();
    }

    return output;
  }

  /** Return String representation of Tag */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Template represents a complete configuration for a Deployment. */
class Template {

  /** Action definitions for use in Module intents in this Template. */
  core.Map<core.String, Action> actions;

  /** A user-supplied description of this Template. */
  core.String description;

  /** A list of modules for this Template. */
  core.Map<core.String, Module> modules;

  /** Name of this Template. The name must conform to the expression: [a-zA-Z0-9-_]{1,64} */
  core.String name;

  /** Create new Template from JSON data */
  Template.fromJson(core.Map json) {
    if (json.containsKey("actions")) {
      actions = _mapMap(json["actions"], (actionsItem) => new Action.fromJson(actionsItem));
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("modules")) {
      modules = _mapMap(json["modules"], (modulesItem) => new Module.fromJson(modulesItem));
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Template */
  core.Map toJson() {
    var output = new core.Map();

    if (actions != null) {
      output["actions"] = _mapMap(actions, (actionsItem) => actionsItem.toJson());
    }
    if (description != null) {
      output["description"] = description;
    }
    if (modules != null) {
      output["modules"] = _mapMap(modules, (modulesItem) => modulesItem.toJson());
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Template */
  core.String toString() => JSON.encode(this.toJson());

}

class TemplatesListResponse {

  core.String nextPageToken;

  core.List<Template> resources;

  /** Create new TemplatesListResponse from JSON data */
  TemplatesListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new Template.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for TemplatesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TemplatesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
