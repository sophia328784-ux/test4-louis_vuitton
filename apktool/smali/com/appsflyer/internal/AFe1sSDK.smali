.class public final Lcom/appsflyer/internal/AFe1sSDK;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private final registerClient:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1sSDK;->registerClient:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1sSDK;->registerClient:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
