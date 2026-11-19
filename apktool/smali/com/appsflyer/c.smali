.class public final synthetic Lcom/appsflyer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/appsflyer/sdk_base/logger/LogTag;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Throwable;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/c;->b:Lcom/appsflyer/sdk_base/logger/LogTag;

    iput-object p2, p0, Lcom/appsflyer/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/c;->d:Ljava/lang/Throwable;

    iput-boolean p4, p0, Lcom/appsflyer/c;->e:Z

    iput-boolean p5, p0, Lcom/appsflyer/c;->f:Z

    iput-boolean p6, p0, Lcom/appsflyer/c;->g:Z

    iput-boolean p7, p0, Lcom/appsflyer/c;->h:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-boolean v6, p0, Lcom/appsflyer/c;->h:Z

    move-object v7, p1

    check-cast v7, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    iget-object v0, p0, Lcom/appsflyer/c;->b:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object v1, p0, Lcom/appsflyer/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/c;->d:Ljava/lang/Throwable;

    iget-boolean v3, p0, Lcom/appsflyer/c;->e:Z

    iget-boolean v4, p0, Lcom/appsflyer/c;->f:Z

    iget-boolean v5, p0, Lcom/appsflyer/c;->g:Z

    invoke-static/range {v0 .. v7}, Lcom/appsflyer/AFLogger;->g(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
