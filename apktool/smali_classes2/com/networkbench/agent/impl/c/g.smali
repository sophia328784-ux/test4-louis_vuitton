.class public Lcom/networkbench/agent/impl/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "seriesConnectionLog->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logNetwork->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logReportError->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "activitytrace->>>>>>:"

    .line 21
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 22
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logFps->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logFps->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logInit->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "eventtrace->>>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "pagechange->>>>>>:"

    .line 21
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logSaveData->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "webviewinfo->>>>>>:"

    .line 21
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logSerise->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "extensionInfo->>>>>>:"

    .line 21
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cpuLog->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "useractions->>>>>>:"

    .line 21
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logNetwork->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "measurement->>>>>>:"

    .line 21
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logReportError->>>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "socketimpl->>>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "AppStart->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "EventAction->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logNBSAgent->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "checkSwitch->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logVersion3->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logApms->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logInit->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logCheckState->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "tcpLog->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logSpan->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logOkhttp->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "netWorkPaicha->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logSaveData->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logScreenData->>>>>: "

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logSerise->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "coulometryLog->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/g;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "cpuLog->>>>>:"

    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method
