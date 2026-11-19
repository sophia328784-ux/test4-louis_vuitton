.class public final Lcom/appsflyer/sdk_base/logger/LoggerDelegate;
.super Lcom/appsflyer/sdk_base/logger/AFLoggerBase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J@\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/appsflyer/sdk_base/logger/LoggerDelegate;",
        "Lcom/appsflyer/sdk_base/logger/AFLoggerBase;",
        "delegate",
        "<init>",
        "(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V",
        "v",
        "",
        "tag",
        "Lcom/appsflyer/sdk_base/logger/LogTag;",
        "msg",
        "",
        "shouldRemoteDebug",
        "",
        "d",
        "i",
        "w",
        "e",
        "throwable",
        "",
        "printMsg",
        "printThrowable",
        "shouldReportToExManager",
        "force",
        "sdk_base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;


# direct methods
.method public constructor <init>(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    return-void
.end method


# virtual methods
.method public d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-virtual/range {p0 .. p7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    return-void
.end method

.method public force(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-virtual {p0, p1, p2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->force(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void
.end method

.method public v(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->v(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void
.end method

.method public w(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/sdk_base/logger/LoggerDelegate;->delegate:Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void
.end method
