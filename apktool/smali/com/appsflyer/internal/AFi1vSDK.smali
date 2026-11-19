.class public final Lcom/appsflyer/internal/AFi1vSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final AFLogger:Landroid/content/Context;

.field public d:Lcom/appsflyer/internal/AFi1ySDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1vSDK;->AFLogger:Landroid/content/Context;

    return-void
.end method
