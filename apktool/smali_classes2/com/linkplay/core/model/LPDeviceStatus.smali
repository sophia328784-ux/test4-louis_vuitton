.class public Lcom/linkplay/core/model/LPDeviceStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field Eth2:Ljava/lang/String;

.field IP:Ljava/lang/String;

.field MAC:Ljava/lang/String;

.field MCUNewVer:Ljava/lang/String;

.field MCUVer:Ljava/lang/String;

.field NewVer:Ljava/lang/String;

.field Psk:Ljava/lang/String;

.field SSID:Ljava/lang/String;

.field UUID:Ljava/lang/String;

.field UpnpUUID:Ljava/lang/String;

.field UpnpVersion:Ljava/lang/String;

.field alexaVer:Ljava/lang/String;

.field alexa_ver:Ljava/lang/String;

.field private audio_type_support:I

.field auth:Ljava/lang/String;

.field batteryFlag:I

.field batteryPercent:I

.field build:Ljava/lang/String;

.field cap1:I

.field capability:I

.field communication_port:Ljava/lang/Integer;

.field currentVolume:I

.field date:Ljava/lang/String;

.field dueros_ver:Ljava/lang/String;

.field encry:Ljava/lang/String;

.field external:I

.field firmware:Ljava/lang/String;

.field friendlyName:Ljava/lang/String;

.field private group:I

.field groupName:Ljava/lang/String;

.field private group_prefer:I

.field hardware:Ljava/lang/String;

.field hideSSID:Ljava/lang/String;

.field iheartradio_new:Ljava/lang/String;

.field internet:I

.field isSecurity3:Z

.field iscommunication:Z

.field language:Ljava/lang/String;

.field languages:I

.field public mVolumeDelayedTimer:Lcom/linkplay/core/model/DelayedTimer;

.field private master_uuid:Ljava/lang/String;

.field private max_volume:I

.field netstat:I

.field new_iheart_podcast:Ljava/lang/String;

.field new_tunein_preset_and_alarm:Ljava/lang/String;

.field private ota_interface_ver:Ljava/lang/String;

.field pendMask:Lcom/linkplay/core/status/LPPendingMask;

.field pendSlave:Lcom/linkplay/core/status/LPPendingSlave;

.field plm_support:I

.field presetKey:I

.field preset_key:I

.field project:Ljava/lang/String;

.field region:Ljava/lang/String;

.field release:Ljava/lang/String;

.field router:Ljava/lang/String;

.field security:Ljava/lang/String;

.field securityVersion:Ljava/lang/String;

.field security_capabilities:Ljava/lang/String;

.field service_version:Ljava/lang/String;

.field slaveList:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field streamAll:I

.field streamAllStr:Ljava/lang/String;

.field streams:I

.field tidal_version:Ljava/lang/String;

.field time:Ljava/lang/String;

.field timeStamp:Ljava/lang/String;

.field timeZone:Ljava/lang/Double;

.field tvs_ver:Ljava/lang/String;

.field tz:I

.field tz2:I

.field tz_info_ver:Ljava/lang/String;

.field uartPassPort:I

.field usb:Ljava/lang/String;

.field verUpdateFlag:I

.field version:Ljava/lang/String;

.field versionUpdate:I

.field private volume_control:I

.field wifiChannel:Ljava/lang/String;

.field wifiStrength:I

.field public wmrm_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->IP:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wifiStrength:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MAC:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->friendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->hardware:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->firmware:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->language:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->languages:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->release:Ljava/lang/String;

    sget-object v2, Lcom/linkplay/core/status/LPPendingMask;->LP_PENDING_UNMASK:Lcom/linkplay/core/status/LPPendingMask;

    iput-object v2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->pendMask:Lcom/linkplay/core/status/LPPendingMask;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->router:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->alexaVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->security:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->securityVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->security_capabilities:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3:Z

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->netstat:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->build:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->internet:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->project:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wifiChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->hideSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MCUVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MCUNewVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->Eth2:Ljava/lang/String;

    const-string v3, "`"

    iput-object v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->Psk:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->verUpdateFlag:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->NewVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->slaveList:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->currentVolume:I

    const-string v3, "0"

    iput-object v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeStamp:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->external:I

    const/16 v3, -0x64

    iput v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streams:I

    iput v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streamAll:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streamAllStr:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->preset_key:I

    const/16 v4, 0x22c3

    iput v4, p0, Lcom/linkplay/core/model/LPDeviceStatus;->uartPassPort:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/linkplay/core/model/LPDeviceStatus;->communication_port:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->iscommunication:Z

    iput v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->plm_support:I

    iput v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->capability:I

    iput v3, p0, Lcom/linkplay/core/model/LPDeviceStatus;->cap1:I

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryFlag:I

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryPercent:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->usb:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->presetKey:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->alexa_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->iheartradio_new:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tidal_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->service_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->new_tunein_preset_and_alarm:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->new_iheart_podcast:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tvs_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->dueros_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->region:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->auth:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->encry:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->date:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz:I

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz2:I

    iput-object v4, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeZone:Ljava/lang/Double;

    iput-object v4, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz_info_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->ota_interface_ver:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->group_prefer:I

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->master_uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wmrm_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->status:Ljava/lang/String;

    iput v2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->audio_type_support:I

    new-instance v0, Lcom/linkplay/core/model/DelayedTimer;

    const-wide/16 v1, 0x3a98

    invoke-direct {v0, v1, v2}, Lcom/linkplay/core/model/DelayedTimer;-><init>(J)V

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->mVolumeDelayedTimer:Lcom/linkplay/core/model/DelayedTimer;

    return-void
.end method

.method private parseStatus(Ljava/lang/String;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "external"

    const-string v3, "streams_all"

    const-string v4, "streams"

    const-string v5, "communication_port"

    const-string v6, "RSSI"

    const-string v7, "MAC"

    const-string v8, "psk"

    const-string v9, "securemode"

    const-string v10, "security_version"

    const-string v11, "security"

    const-string v12, "uart_pass_port"

    const-string v13, "languages"

    const-string v14, "aes_ver"

    const-string v15, "security_capabilities"

    move-object/from16 v16, v2

    const-string v2, "language"

    move-object/from16 v17, v3

    const-string v3, "netstat"

    move-object/from16 v18, v4

    const-string v4, "firmware"

    move-object/from16 v19, v5

    const-string v5, "hardware"

    move-object/from16 v20, v6

    const-string v6, "NewVer"

    move-object/from16 v21, v7

    const-string v7, "new_version"

    move-object/from16 v22, v8

    const-string v8, "eth2"

    move-object/from16 v23, v9

    const-string v9, "internet"

    move-object/from16 v24, v10

    const-string v10, "WifiChannel"

    move-object/from16 v25, v11

    const-string v11, "DeviceName"

    move-object/from16 v26, v12

    const-string v12, "upnp_version"

    move-object/from16 v27, v13

    const-string v13, "VersionUpdate"

    move-object/from16 v28, v14

    const-string v14, "build"

    move-object/from16 v29, v15

    const-string v15, "mcu_ver_new"

    move-object/from16 v30, v2

    const-string v2, "mcu_ver"

    move-object/from16 v31, v3

    const-string v3, "hideSSID"

    move-object/from16 v32, v4

    const-string v4, "upnp_uuid"

    move-object/from16 v33, v5

    const-string v5, "project"

    move-object/from16 v34, v6

    const-string v6, "GroupName"

    move-object/from16 v35, v7

    const-string v7, "ssid"

    move-object/from16 v36, v8

    const-string v8, "apcli0"

    move-object/from16 v37, v9

    const-string v9, "uuid"

    move-object/from16 v38, v10

    const-string v10, "preset_key"

    move-object/from16 v39, v10

    const-string v10, "alexa_ver"

    move-object/from16 v40, v10

    const-string v10, "Release"

    move-object/from16 v41, v11

    const-string v11, "device status:"

    move-object/from16 v42, v12

    :try_start_0
    const-string v12, "LINKPLAY_SDK"

    move-object/from16 v43, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/linkplay/core/model/LPDeviceStatus;->status:Ljava/lang/String;

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUUID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setUUID(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setIP(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setIP(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setSSID(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setSSID(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroupName(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroupName(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setProject(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setProject(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUpnpUUID(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setUpnpUUID(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setHideSSID(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setHideSSID(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMCUVer(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setMCUVer(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMCUNewVer(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setMCUNewVer(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setRelease(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setRelease(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setBuild(Ljava/lang/String;)V

    :goto_a
    move-object/from16 v1, v43

    goto :goto_b

    :cond_a
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setBuild(Ljava/lang/String;)V

    goto :goto_a

    :goto_b
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setVersionUpdate(I)V

    :goto_c
    move-object/from16 v1, v42

    goto :goto_d

    :cond_b
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setVersionUpdate(I)V

    goto :goto_c

    :goto_d
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUpnpVersion(Ljava/lang/String;)V

    :goto_e
    move-object/from16 v1, v41

    goto :goto_f

    :cond_c
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setUpnpVersion(Ljava/lang/String;)V

    goto :goto_e

    :goto_f
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setFriendlyName(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v1, v38

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setWifiChannel(Ljava/lang/String;)V

    :goto_10
    move-object/from16 v1, v37

    goto :goto_11

    :cond_e
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setWifiChannel(Ljava/lang/String;)V

    goto :goto_10

    :goto_11
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_f

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setInternet(I)V

    :goto_12
    move-object/from16 v1, v36

    goto :goto_13

    :cond_f
    invoke-virtual {v0, v4}, Lcom/linkplay/core/model/LPDeviceStatus;->setInternet(I)V

    goto :goto_12

    :goto_13
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setEth2(Ljava/lang/String;)V

    :goto_14
    move-object/from16 v1, v35

    goto :goto_15

    :cond_10
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setEth2(Ljava/lang/String;)V

    goto :goto_14

    :goto_15
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setNewVer(Ljava/lang/String;)V

    :goto_16
    move-object/from16 v1, v34

    goto :goto_17

    :cond_11
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setNewVer(Ljava/lang/String;)V

    goto :goto_16

    :goto_17
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setNewVer(Ljava/lang/String;)V

    :goto_18
    move-object/from16 v1, v33

    goto :goto_19

    :cond_12
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setNewVer(Ljava/lang/String;)V

    goto :goto_18

    :goto_19
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setHardware(Ljava/lang/String;)V

    :goto_1a
    move-object/from16 v1, v32

    goto :goto_1b

    :cond_13
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setHardware(Ljava/lang/String;)V

    goto :goto_1a

    :goto_1b
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setFirmware(Ljava/lang/String;)V

    :goto_1c
    move-object/from16 v1, v31

    goto :goto_1d

    :cond_14
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setFirmware(Ljava/lang/String;)V

    goto :goto_1c

    :goto_1d
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setNetstat(I)V

    :goto_1e
    move-object/from16 v1, v30

    goto :goto_1f

    :cond_15
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setNetstat(I)V

    goto :goto_1e

    :goto_1f
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setLanguage(Ljava/lang/String;)V

    goto :goto_20

    :cond_16
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setLanguage(Ljava/lang/String;)V

    :goto_20
    iput-boolean v3, v0, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3:Z

    move-object/from16 v1, v29

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_17

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/linkplay/core/model/LPDeviceStatus;->security_capabilities:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/linkplay/core/model/LPDeviceStatus;->security_capabilities:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_17

    iput-boolean v5, v0, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_17
    move-object/from16 v1, v27

    :try_start_3
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setLanguages(I)V

    :goto_21
    move-object/from16 v1, v26

    goto :goto_22

    :cond_18
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setLanguages(I)V

    goto :goto_21

    :goto_22
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUartPassPort(I)V

    :goto_23
    move-object/from16 v1, v25

    goto :goto_24

    :cond_19
    const/16 v1, 0x22c3

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUartPassPort(I)V

    goto :goto_23

    :goto_24
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setSecurity(Ljava/lang/String;)V

    :goto_25
    move-object/from16 v1, v24

    goto :goto_26

    :cond_1a
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setSecurity(Ljava/lang/String;)V

    goto :goto_25

    :goto_26
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setSecurityVersion(Ljava/lang/String;)V

    goto :goto_27

    :cond_1b
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setSecurityVersion(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setRelease(Ljava/lang/String;)V

    :goto_28
    move-object/from16 v1, v23

    goto :goto_29

    :cond_1c
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setRelease(Ljava/lang/String;)V

    goto :goto_28

    :goto_29
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_1d
    move-object v1, v12

    :goto_2a
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setPsk(Ljava/lang/String;)V

    :goto_2b
    move-object/from16 v1, v21

    goto :goto_2c

    :cond_1e
    move-object/from16 v1, v22

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPsk(Ljava/lang/String;)V

    goto :goto_2b

    :cond_1f
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setPsk(Ljava/lang/String;)V

    goto :goto_2b

    :goto_2c
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMAC(Ljava/lang/String;)V

    :goto_2d
    move-object/from16 v1, v40

    goto :goto_2e

    :cond_20
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setMAC(Ljava/lang/String;)V

    goto :goto_2d

    :goto_2e
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setAlexaVer(Ljava/lang/String;)V

    :goto_2f
    move-object/from16 v2, v39

    goto :goto_30

    :cond_21
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setAlexaVer(Ljava/lang/String;)V

    goto :goto_2f

    :goto_30
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setPresetKey(I)V

    :goto_31
    move-object/from16 v6, v20

    goto :goto_32

    :cond_22
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setPresetKey(I)V

    goto :goto_31

    :goto_32
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/linkplay/core/utils/LPDeviceUtils;->getRSSIDB(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setWifiStrength(I)V

    :goto_33
    move-object/from16 v6, v19

    goto :goto_34

    :cond_23
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setWifiStrength(I)V

    goto :goto_33

    :goto_34
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setCommunication_port(Ljava/lang/Integer;)V

    invoke-virtual {v0, v5}, Lcom/linkplay/core/model/LPDeviceStatus;->setIscommunication(Z)V

    :goto_35
    move-object/from16 v5, v18

    goto :goto_36

    :cond_24
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/linkplay/core/model/LPDeviceStatus;->setCommunication_port(Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setIscommunication(Z)V

    goto :goto_35

    :goto_36
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, -0x64

    if-eqz v6, :cond_25

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Lcom/linkplay/core/model/LPDeviceStatus;->setStreams(I)V

    :goto_37
    move-object/from16 v5, v17

    goto :goto_38

    :cond_25
    invoke-virtual {v0, v7}, Lcom/linkplay/core/model/LPDeviceStatus;->setStreams(I)V

    goto :goto_37

    :goto_38
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/linkplay/core/model/LPDeviceStatus;->setStreamAll(I)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getStreamAll()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/linkplay/core/model/LPDeviceStatus;->setStreamAllStr(Ljava/lang/String;)V

    :goto_39
    move-object/from16 v4, v16

    goto :goto_3a

    :cond_26
    invoke-virtual {v0, v4}, Lcom/linkplay/core/model/LPDeviceStatus;->setStreamAll(I)V

    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setStreamAllStr(Ljava/lang/String;)V

    goto :goto_39

    :goto_3a
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/linkplay/core/model/LPDeviceStatus;->setExternal(I)V

    goto :goto_3b

    :cond_27
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setExternal(I)V

    :goto_3b
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setPreset_key(I)V

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getPreset_key()I

    move-result v2

    if-nez v2, :cond_29

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setPreset_key(I)V

    goto :goto_3c

    :cond_28
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setPreset_key(I)V

    :cond_29
    :goto_3c
    const-string v2, "plm_support"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "plm_support"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setPlm_support(I)V

    goto :goto_3d

    :cond_2a
    invoke-virtual {v0, v7}, Lcom/linkplay/core/model/LPDeviceStatus;->setPlm_support(I)V

    :goto_3d
    const-string v2, "usb"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "usb"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setUsb(Ljava/lang/String;)V

    goto :goto_3e

    :cond_2b
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setUsb(Ljava/lang/String;)V

    :goto_3e
    const-string v2, "capability"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "capability"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setCapability(I)V

    goto :goto_3f

    :cond_2c
    invoke-virtual {v0, v7}, Lcom/linkplay/core/model/LPDeviceStatus;->setCapability(I)V

    :goto_3f
    const-string v2, "cap1"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "cap1"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/utils/ByteIntConverter;->hexToLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setCap1(I)V

    goto :goto_40

    :cond_2d
    invoke-virtual {v0, v7}, Lcom/linkplay/core/model/LPDeviceStatus;->setCap1(I)V

    :goto_40
    const-string v2, "time"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "time"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setTime(Ljava/lang/String;)V

    goto :goto_41

    :cond_2e
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setTime(Ljava/lang/String;)V

    :goto_41
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setAlexa_ver(Ljava/lang/String;)V

    goto :goto_42

    :cond_2f
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setAlexa_ver(Ljava/lang/String;)V

    :goto_42
    const-string v1, "iheartradio_new"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "iheartradio_new"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setIheartradio_new(Ljava/lang/String;)V

    goto :goto_43

    :cond_30
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setIheartradio_new(Ljava/lang/String;)V

    :goto_43
    const-string v1, "tidal_version"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "tidal_version"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setTidal_version(Ljava/lang/String;)V

    goto :goto_44

    :cond_31
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setTidal_version(Ljava/lang/String;)V

    :goto_44
    const-string v1, "service_version"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "service_version"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setService_version(Ljava/lang/String;)V

    goto :goto_45

    :cond_32
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setService_version(Ljava/lang/String;)V

    :goto_45
    const-string v1, "new_tunein_preset_and_alarm"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "new_tunein_preset_and_alarm"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setNew_tunein_preset_and_alarm(Ljava/lang/String;)V

    goto :goto_46

    :cond_33
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setNew_tunein_preset_and_alarm(Ljava/lang/String;)V

    :goto_46
    const-string v1, "new_iheart_podcast"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "new_iheart_podcast"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setNew_iheart_podcast(Ljava/lang/String;)V

    goto :goto_47

    :cond_34
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setNew_tunein_preset_and_alarm(Ljava/lang/String;)V

    :goto_47
    const-string v1, "tvs_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "tvs_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setTvs_ver(Ljava/lang/String;)V

    goto :goto_48

    :cond_35
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setTvs_ver(Ljava/lang/String;)V

    :goto_48
    const-string v1, "dueros_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "dueros_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDueros_ver(Ljava/lang/String;)V

    goto :goto_49

    :cond_36
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setDueros_ver(Ljava/lang/String;)V

    :goto_49
    const-string v1, "auth"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "auth"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setAuth(Ljava/lang/String;)V

    goto :goto_4a

    :cond_37
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setAuth(Ljava/lang/String;)V

    :goto_4a
    const-string v1, "encry"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "encry"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setEncry(Ljava/lang/String;)V

    goto :goto_4b

    :cond_38
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setEncry(Ljava/lang/String;)V

    :goto_4b
    const-string v1, "region"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "region"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setRegion(Ljava/lang/String;)V

    goto :goto_4c

    :cond_39
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setRegion(Ljava/lang/String;)V

    :goto_4c
    const-string v1, "date"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "date"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDate(Ljava/lang/String;)V

    goto :goto_4d

    :cond_3a
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setDate(Ljava/lang/String;)V

    :goto_4d
    const-string v1, "tz"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "tz"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setTz(I)V

    goto :goto_4e

    :cond_3b
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setTz(I)V

    :goto_4e
    const-string v1, "tz2"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "tz2"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setTz2(I)V

    goto :goto_4f

    :cond_3c
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setTz2(I)V

    :goto_4f
    const-string v1, "group"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "group"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    goto :goto_50

    :cond_3d
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    :goto_50
    const-string v1, "master_uuid"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "master_uuid"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    goto :goto_51

    :cond_3e
    invoke-virtual {v0, v12}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    :goto_51
    const-string v1, "group_prefer"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "group_prefer"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup_prefer(I)V

    goto :goto_52

    :cond_3f
    invoke-virtual {v0, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup_prefer(I)V

    :goto_52
    const-string v1, "TimeZone"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "TimeZone"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setTimeZone(Ljava/lang/Double;)V

    :cond_40
    const-string v1, "tz_info_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "tz_info_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setTz_info_ver(Ljava/lang/String;)V

    :cond_41
    const-string v1, "wmrm_version"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "wmrm_version"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setWmrm_version(Ljava/lang/String;)V

    :cond_42
    const-string v1, "ota_interface_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "ota_interface_ver"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setOta_interface_ver(Ljava/lang/String;)V

    :cond_43
    const-string v1, "max_volume"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "max_volume"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMax_volume(I)V

    :cond_44
    const-string v1, "volume_control"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "volume_control"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setVolume_control(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_53

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :cond_45
    :goto_53
    return-void
.end method


# virtual methods
.method public getAlexaVer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->alexaVer:Ljava/lang/String;

    return-object p0
.end method

.method public getAlexa_ver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->alexa_ver:Ljava/lang/String;

    return-object p0
.end method

.method public getAudio_type_support()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->audio_type_support:I

    return p0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->auth:Ljava/lang/String;

    return-object p0
.end method

.method public getBatteryFlag()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryFlag:I

    return p0
.end method

.method public getBatteryPercent()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryPercent:I

    return p0
.end method

.method public getBuild()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->build:Ljava/lang/String;

    return-object p0
.end method

.method public getCap1()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->cap1:I

    return p0
.end method

.method public getCapability()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->capability:I

    return p0
.end method

.method public getCommunication_port()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->communication_port:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCurrentVolume()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->currentVolume:I

    return p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getDueros_ver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->dueros_ver:Ljava/lang/String;

    return-object p0
.end method

.method public getEncry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->encry:Ljava/lang/String;

    return-object p0
.end method

.method public getEth2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->Eth2:Ljava/lang/String;

    return-object p0
.end method

.method public getExternal()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->external:I

    return p0
.end method

.method public getFirmware()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->firmware:Ljava/lang/String;

    return-object p0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->friendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->group:I

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup_prefer()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->group_prefer:I

    return p0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->hardware:Ljava/lang/String;

    return-object p0
.end method

.method public getIP()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->IP:Ljava/lang/String;

    return-object p0
.end method

.method public getIheartradio_new()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->iheartradio_new:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguages()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->languages:I

    return p0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MAC:Ljava/lang/String;

    return-object p0
.end method

.method public getMCUNewVer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MCUNewVer:Ljava/lang/String;

    return-object p0
.end method

.method public getMCUVer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MCUVer:Ljava/lang/String;

    return-object p0
.end method

.method public getMaster_uuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->master_uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getMax_volume()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->max_volume:I

    return p0
.end method

.method public getNetstat()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->netstat:I

    return p0
.end method

.method public getNewVer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->NewVer:Ljava/lang/String;

    return-object p0
.end method

.method public getNew_iheart_podcast()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->new_iheart_podcast:Ljava/lang/String;

    return-object p0
.end method

.method public getNew_tunein_preset_and_alarm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->new_tunein_preset_and_alarm:Ljava/lang/String;

    return-object p0
.end method

.method public getOta_interface_ver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->ota_interface_ver:Ljava/lang/String;

    return-object p0
.end method

.method public getPendMask()Lcom/linkplay/core/status/LPPendingMask;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->pendMask:Lcom/linkplay/core/status/LPPendingMask;

    return-object p0
.end method

.method public getPendSlave()Lcom/linkplay/core/status/LPPendingSlave;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->pendSlave:Lcom/linkplay/core/status/LPPendingSlave;

    return-object p0
.end method

.method public getPlm_support()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->plm_support:I

    return p0
.end method

.method public getPresetKey()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->presetKey:I

    return p0
.end method

.method public getPreset_key()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->preset_key:I

    return p0
.end method

.method public getProject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->project:Ljava/lang/String;

    return-object p0
.end method

.method public getPsk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->Psk:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->region:Ljava/lang/String;

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getRouter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->router:Ljava/lang/String;

    return-object p0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->SSID:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->security:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->securityVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getService_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->service_version:Ljava/lang/String;

    return-object p0
.end method

.method public getSlaveList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->slaveList:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getStreamAll()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streamAll:I

    return p0
.end method

.method public getStreamAllStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streamAllStr:Ljava/lang/String;

    return-object p0
.end method

.method public getStreams()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streams:I

    return p0
.end method

.method public getTidal_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tidal_version:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeStamp:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeZone:Ljava/lang/Double;

    return-object p0
.end method

.method public getTvs_ver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tvs_ver:Ljava/lang/String;

    return-object p0
.end method

.method public getTz()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz:I

    return p0
.end method

.method public getTz2()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz2:I

    return p0
.end method

.method public getTz_info_ver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz_info_ver:Ljava/lang/String;

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UUID:Ljava/lang/String;

    return-object p0
.end method

.method public getUartPassPort()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->uartPassPort:I

    return p0
.end method

.method public getUpnpUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpUUID:Ljava/lang/String;

    return-object p0
.end method

.method public getUpnpVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getUsb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->usb:Ljava/lang/String;

    return-object p0
.end method

.method public getVerUpdateFlag()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->verUpdateFlag:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->version:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionUpdate()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->versionUpdate:I

    return p0
.end method

.method public getVolume_control()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->volume_control:I

    return p0
.end method

.method public getWifiChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wifiChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiStrength()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wifiStrength:I

    return p0
.end method

.method public getWmrm_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wmrm_version:Ljava/lang/String;

    return-object p0
.end method

.method public hasUpdate()Z
    .locals 1

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->versionUpdate:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasVersionControl()Z
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->service_version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->service_version:Ljava/lang/String;

    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBuildBackup()Z
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->build:Ljava/lang/String;

    const-string v0, "backup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isHaveInternet()Z
    .locals 3

    iget p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->internet:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public isHideSSID()Z
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->hideSSID:Ljava/lang/String;

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isIscommunication()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->iscommunication:Z

    return p0
.end method

.method public isSecurity3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3:Z

    return p0
.end method

.method public setAlexaVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->alexaVer:Ljava/lang/String;

    return-void
.end method

.method public setAlexa_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->alexa_ver:Ljava/lang/String;

    return-void
.end method

.method public setAudio_type_support(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->audio_type_support:I

    return-void
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->auth:Ljava/lang/String;

    return-void
.end method

.method public setBatteryFlag(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryFlag:I

    return-void
.end method

.method public setBatteryPercent(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryPercent:I

    return-void
.end method

.method public setBatteryPercent(II)V
    .locals 0

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryFlag:I

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryPercent:I

    return-void

    :cond_0
    iput p2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryPercent:I

    return-void

    :cond_1
    if-nez p2, :cond_2

    iput p2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->batteryPercent:I

    :cond_2
    return-void
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->build:Ljava/lang/String;

    return-void
.end method

.method public setCap1(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->cap1:I

    return-void
.end method

.method public setCapability(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->capability:I

    return-void
.end method

.method public setCommunication_port(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->communication_port:Ljava/lang/Integer;

    return-void
.end method

.method public setCurrentVolume(I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->currentVolume:I

    if-eq v0, p1, :cond_1

    .line 53
    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->currentVolume:I

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setCurrentVolume(ILjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeStamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xea60

    if-le v2, v3, :cond_0

    const-string v1, "0"

    iput-object v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeStamp:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->currentVolume:I

    if-eq v2, p1, :cond_2

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeStamp:Ljava/lang/String;

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->currentVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->date:Ljava/lang/String;

    return-void
.end method

.method public setDeviceStatus(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->parseStatus(Ljava/lang/String;)V

    return-void
.end method

.method public setDueros_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->dueros_ver:Ljava/lang/String;

    return-void
.end method

.method public setEncry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->encry:Ljava/lang/String;

    return-void
.end method

.method public setEth2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->Eth2:Ljava/lang/String;

    return-void
.end method

.method public setExternal(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->external:I

    return-void
.end method

.method public setFirmware(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->firmware:Ljava/lang/String;

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->group:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroup_prefer(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->group_prefer:I

    return-void
.end method

.method public setHardware(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->hardware:Ljava/lang/String;

    return-void
.end method

.method public setHideSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->hideSSID:Ljava/lang/String;

    return-void
.end method

.method public setIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->IP:Ljava/lang/String;

    return-void
.end method

.method public setIheartradio_new(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->iheartradio_new:Ljava/lang/String;

    return-void
.end method

.method public setInternet(I)V
    .locals 1

    iget v0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->internet:I

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->internet:I

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INTERNET_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyInternetStatusObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_0
    return-void
.end method

.method public setIscommunication(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->iscommunication:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->language:Ljava/lang/String;

    return-void
.end method

.method public setLanguages(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->languages:I

    return-void
.end method

.method public setMAC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MAC:Ljava/lang/String;

    return-void
.end method

.method public setMCUNewVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MCUNewVer:Ljava/lang/String;

    return-void
.end method

.method public setMCUVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->MCUVer:Ljava/lang/String;

    return-void
.end method

.method public setMaster_uuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->master_uuid:Ljava/lang/String;

    return-void
.end method

.method public setMax_volume(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->max_volume:I

    return-void
.end method

.method public setNetstat(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->netstat:I

    return-void
.end method

.method public setNewVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->NewVer:Ljava/lang/String;

    return-void
.end method

.method public setNew_iheart_podcast(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->new_iheart_podcast:Ljava/lang/String;

    return-void
.end method

.method public setNew_tunein_preset_and_alarm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->new_tunein_preset_and_alarm:Ljava/lang/String;

    return-void
.end method

.method public setOta_interface_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->ota_interface_ver:Ljava/lang/String;

    return-void
.end method

.method public setPendMask(Lcom/linkplay/core/status/LPPendingMask;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->pendMask:Lcom/linkplay/core/status/LPPendingMask;

    return-void
.end method

.method public setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->pendSlave:Lcom/linkplay/core/status/LPPendingSlave;

    return-void
.end method

.method public setPlm_support(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->plm_support:I

    return-void
.end method

.method public setPresetKey(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->presetKey:I

    return-void
.end method

.method public setPreset_key(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->preset_key:I

    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->project:Ljava/lang/String;

    return-void
.end method

.method public setPsk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->Psk:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->region:Ljava/lang/String;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->release:Ljava/lang/String;

    return-void
.end method

.method public setRouter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->router:Ljava/lang/String;

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->SSID:Ljava/lang/String;

    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->security:Ljava/lang/String;

    return-void
.end method

.method public setSecurity3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3:Z

    return-void
.end method

.method public setSecurityVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->securityVersion:Ljava/lang/String;

    return-void
.end method

.method public setService_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->service_version:Ljava/lang/String;

    return-void
.end method

.method public setSlaveList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->slaveList:Ljava/lang/String;

    return-void
.end method

.method public setStreamAll(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streamAll:I

    return-void
.end method

.method public setStreamAllStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streamAllStr:Ljava/lang/String;

    return-void
.end method

.method public setStreams(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->streams:I

    return-void
.end method

.method public setTidal_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tidal_version:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeStamp:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->timeZone:Ljava/lang/Double;

    return-void
.end method

.method public setTvs_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tvs_ver:Ljava/lang/String;

    return-void
.end method

.method public setTz(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz:I

    return-void
.end method

.method public setTz2(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz2:I

    return-void
.end method

.method public setTz_info_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->tz_info_ver:Ljava/lang/String;

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UUID:Ljava/lang/String;

    return-void
.end method

.method public setUartPassPort(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->uartPassPort:I

    return-void
.end method

.method public setUpnpUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpUUID:Ljava/lang/String;

    return-void
.end method

.method public setUpnpVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UpnpVersion:Ljava/lang/String;

    return-void
.end method

.method public setUsb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->usb:Ljava/lang/String;

    return-void
.end method

.method public setVerUpdateFlag(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->verUpdateFlag:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->version:Ljava/lang/String;

    return-void
.end method

.method public setVersionUpdate(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->versionUpdate:I

    return-void
.end method

.method public setVolume_control(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->volume_control:I

    return-void
.end method

.method public setWifiChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wifiChannel:Ljava/lang/String;

    return-void
.end method

.method public setWifiStrength(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wifiStrength:I

    return-void
.end method

.method public setWmrm_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->wmrm_version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LPDevice{UUID=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", IP=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", SSID=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/model/LPDeviceStatus;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", friendlyName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceStatus;->friendlyName:Ljava/lang/String;

    const-string v1, "\"}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
