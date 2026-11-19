.class final Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/hardware/camera2/CameraManager;

.field public c:Ljava/lang/String;

.field public d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->a:Landroid/content/Context;

    return-void
.end method
