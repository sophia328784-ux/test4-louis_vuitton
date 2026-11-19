.class public Lcom/linkplay/core/group/LPMultiroomManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static GROUP_TIMEOUT:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "LPMultiroomManager"

.field private static final instance:Lcom/linkplay/core/group/LPMultiroomManager;


# instance fields
.field checkThread:Ljava/lang/Thread;

.field private isJoinGroupFailed:Z

.field private joinGroupCount:I

.field private joinGroupIndex:I

.field leaveGroupCount:I

.field leaveGroupFailed:Z

.field leaveGroupIndex:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linkplay/core/group/LPMultiroomManager;

    invoke-direct {v0}, Lcom/linkplay/core/group/LPMultiroomManager;-><init>()V

    sput-object v0, Lcom/linkplay/core/group/LPMultiroomManager;->instance:Lcom/linkplay/core/group/LPMultiroomManager;

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/linkplay/core/group/LPMultiroomManager;->GROUP_TIMEOUT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupCount:I

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupIndex:I

    iput-boolean v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->isJoinGroupFailed:Z

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupCount:I

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    iput-boolean v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupFailed:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/group/LPMultiroomManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->isJoinGroupFailed:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/group/LPMultiroomManager;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupCount:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/core/group/LPMultiroomManager;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupIndex:I

    return p0
.end method

.method private checkoutJoinResult(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, p3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/linkplay/core/group/LPMultiroomManager$5;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/linkplay/core/group/LPMultiroomManager$5;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;JLcom/linkplay/core/group/LPMultiroomListener;Lcom/linkplay/core/device/LPDevice;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, v1, Lcom/linkplay/core/group/LPMultiroomManager;->checkThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void

    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "source and target can not be null."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method private checkoutLeaveResult(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "source and target can not be null."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/linkplay/core/group/LPMultiroomManager$7;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/linkplay/core/group/LPMultiroomManager$7;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;JLcom/linkplay/core/group/LPMultiroomListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, v1, Lcom/linkplay/core/group/LPMultiroomManager;->checkThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/linkplay/core/group/LPMultiroomManager;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->isJoinGroupFailed:Z

    return-void
.end method

.method private deviceJoinGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {p1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v1

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestPrefix(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "multiroom:JoinGroup:IP="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":uuid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LPMultiroomManager masterDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " slaveDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LINKPLAY_SDK"

    invoke-static {v3, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/linkplay/core/group/LPMultiroomManager$4;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/linkplay/core/group/LPMultiroomManager$4;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "target can not be Master"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "source and target can not be null."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method private deviceLeaveGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "source and target can not be null."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiroom:LeaveGroup"

    invoke-static {v0, v2, v3}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/linkplay/core/group/LPMultiroomManager$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/linkplay/core/group/LPMultiroomManager$6;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "leave group success"

    invoke-interface {p2, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->success(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/linkplay/core/group/LPMultiroomManager;I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupIndex:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/group/LPMultiroomManager;->checkoutJoinResult(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/core/group/LPMultiroomManager;->checkoutLeaveResult(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method

.method private getCheckedDevices(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->isCheckDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static getInstance()Lcom/linkplay/core/group/LPMultiroomManager;
    .locals 1

    sget-object v0, Lcom/linkplay/core/group/LPMultiroomManager;->instance:Lcom/linkplay/core/group/LPMultiroomManager;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/group/LPMultiroomManager;->privateAddGroupDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method

.method public static bridge synthetic i()J
    .locals 2

    sget-wide v0, Lcom/linkplay/core/group/LPMultiroomManager;->GROUP_TIMEOUT:J

    return-wide v0
.end method

.method private privateAddGroupDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/core/device/LPDevice;",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;",
            "Lcom/linkplay/core/group/LPMultiroomListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/linkplay/core/group/LPMultiroomManager;->joinGroupIndex:I

    iput-boolean v1, p0, Lcom/linkplay/core/group/LPMultiroomManager;->isJoinGroupFailed:Z

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    new-instance v3, Lcom/linkplay/core/group/LPMultiroomManager$2;

    invoke-direct {v3, p0, p3}, Lcom/linkplay/core/group/LPMultiroomManager$2;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/group/LPMultiroomListener;)V

    invoke-direct {p0, v2, p1, v3}, Lcom/linkplay/core/group/LPMultiroomManager;->deviceJoinGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "add group devices is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method private privateGetUnSelectSlaveDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/core/device/LPDevice;",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->getSlaveDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    move v3, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object p1

    :cond_6
    :goto_3
    return-object p0

    :cond_7
    :goto_4
    return-object v0
.end method

.method private privateLeaveSlaveDevice(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;",
            "Lcom/linkplay/core/group/LPMultiroomListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    iput-boolean v0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupFailed:Z

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    new-instance v2, Lcom/linkplay/core/group/LPMultiroomManager$3;

    invoke-direct {v2, p0, v1, p2}, Lcom/linkplay/core/group/LPMultiroomManager$3;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    invoke-direct {p0, v1, v2}, Lcom/linkplay/core/group/LPMultiroomManager;->deviceLeaveGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "slave devices empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method private privateOperateMasterDevice(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/core/device/LPDevice;",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;",
            "Lcom/linkplay/core/group/LPMultiroomListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getPendSlave()Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v5

    sget-object v6, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/linkplay/core/group/LPMultiroomManager;->privateGetUnSelectSlaveDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const-string v0, "LINKPLAY_SDK"

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "LPMultiroomManager \u6709\u8bbe\u5907\u5f00\u59cb\u9700\u8981\u89e3\u7ec4--"

    invoke-static {v0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/linkplay/core/group/LPMultiroomManager;->privateLeaveSlaveDevice(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_6

    const-string p0, "LPMultiroomManager \u5f53\u524d\u8981\u52a0\u7ec4\u7684\u8bbe\u5907\u4e3a\u7a7a"

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string p0, "add group devices is empty"

    invoke-interface {p3, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->success(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0, p1, v1, p3}, Lcom/linkplay/core/group/LPMultiroomManager;->privateAddGroupDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method

.method private privateOperateSlaveDevice(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/core/device/LPDevice;",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;",
            "Lcom/linkplay/core/group/LPMultiroomListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/linkplay/core/group/LPMultiroomManager$1;

    invoke-direct {p2, p0, p1, v1, p3}, Lcom/linkplay/core/group/LPMultiroomManager$1;-><init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    invoke-direct {p0, p1, p2}, Lcom/linkplay/core/group/LPMultiroomManager;->deviceLeaveGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method


# virtual methods
.method public deviceMultiroomWithDeviceList(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;",
            "Lcom/linkplay/core/group/LPMultiroomListener;",
            ")V"
        }
    .end annotation

    const-string v0, "LINKPLAY_SDK"

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-direct {p0, p1}, Lcom/linkplay/core/group/LPMultiroomManager;->getCheckedDevices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/linkplay/core/device/LPDevice;

    new-instance v6, Lcom/linkplay/core/group/LPOperateParam;

    invoke-direct {v6}, Lcom/linkplay/core/group/LPOperateParam;-><init>()V

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/linkplay/core/model/LPDeviceStatus;->getHardware()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/linkplay/core/model/LPDeviceStatus;->getSSID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/linkplay/core/group/LPOperateParam;->ssid:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/linkplay/core/model/LPDeviceStatus;->getPendSlave()Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v7

    sget-object v8, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v3, v6, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v7

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/linkplay/core/app/LPDeviceManager;->getSlaveDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v6, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    goto :goto_2

    :cond_4
    :goto_1
    iput v3, v6, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    :goto_2
    iput v4, v6, Lcom/linkplay/core/group/LPOperateParam;->index:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_3
    const-string v6, "A31"

    const-string v7, "A28"

    if-ge v5, p1, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/linkplay/core/group/LPOperateParam;

    move v9, v3

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/linkplay/core/group/LPOperateParam;

    iget-object v11, v8, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v8, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v10, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v10, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iget v11, v8, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    iget v10, v10, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    if-le v11, v10, :cond_9

    invoke-virtual {v4, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    iget-object v11, v10, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v10, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    iget v11, v8, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    iget v10, v10, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    if-le v11, v10, :cond_9

    invoke-virtual {v4, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    const/4 p1, -0x1

    move v2, v3

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/linkplay/core/group/LPOperateParam;

    iget v8, v5, Lcom/linkplay/core/group/LPOperateParam;->slave_count:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "LPMultiroomManager \u6bcf\u9879\u7ec4\u7f51\u914d\u7f6e\u53c2\u6570 \u540d\u79f0: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/linkplay/core/group/LPOperateParam;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/linkplay/core/group/LPOperateParam;->index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", slave count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_c

    iget p1, v5, Lcom/linkplay/core/group/LPOperateParam;->index:I

    :goto_8
    move v2, v8

    goto :goto_9

    :cond_c
    if-ge v2, v8, :cond_d

    iget-object v9, v5, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v5, Lcom/linkplay/core/group/LPOperateParam;->hardware:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    iget p1, v5, Lcom/linkplay/core/group/LPOperateParam;->index:I

    goto :goto_8

    :cond_d
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    if-ltz p1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_f

    goto :goto_a

    :cond_f
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LPMultiroomManager \u6700\u7ec8\u9009\u62e9\u7684\u4e3b\u8bbe\u5907\u540d\u79f0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LPMultiroomManager \u5f00\u59cb\u52a0\u89e3\u7ec4\u64cd\u4f5c+++"

    invoke-static {v0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getPendSlave()Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v2

    sget-object v3, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LPMultiroomManager \u5f53\u524d\u8bbe\u5907\u662f\u4e3b\u8bbe\u5907: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/linkplay/core/group/LPMultiroomManager;->privateOperateMasterDevice(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LPMultiroomManager \u5f53\u524d\u8bbe\u5907\u662f\u5b50\u8bbe\u5907\uff0c\u5148\u89e3\u7ec4: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/linkplay/core/group/LPMultiroomManager;->privateOperateSlaveDevice(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void

    :cond_11
    :goto_a
    const-string p0, "LPMultiroomManager \u9009\u62e9\u8bbe\u5907\u5f02\u5e38."

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_15

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "other errors -1003"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_12
    :goto_b
    const-string v1, "LPMultiroomManager \u6ca1\u6709\u9009\u62e9\u52a0\u7ec4\u7684\u8bbe\u5907"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getPendSlave()Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v1

    sget-object v2, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/linkplay/core/group/LPMultiroomManager;->privateGetUnSelectSlaveDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/linkplay/core/group/LPMultiroomManager;->privateLeaveSlaveDevice(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    goto :goto_c

    :cond_14
    :goto_d
    const-string p0, "LPMultiroomManager \u6ca1\u6709\u4f20\u5165\u8bbe\u5907"

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_15

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "no select device"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_15
    return-void
.end method

.method public deviceMultiroomWithSlaveDeviceList(Ljava/util/List;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;",
            "Lcom/linkplay/core/device/LPDevice;",
            "Lcom/linkplay/core/group/LPMultiroomListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/linkplay/core/group/LPMultiroomManager;->privateLeaveSlaveDevice(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lcom/linkplay/core/group/LPMultiroomManager;->privateAddGroupDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager;->version:Ljava/lang/String;

    return-object p0
.end method
