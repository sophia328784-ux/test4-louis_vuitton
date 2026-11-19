.class public final synthetic Lao0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field public final synthetic a:Lmd;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;Lmd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lao0;->a:Lmd;

    iput-object p3, p0, Lao0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->c:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p0, Lao0;->a:Lmd;

    invoke-virtual {v0, p1}, Lmd;->o(Z)V

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iget-object p0, p0, Lao0;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
