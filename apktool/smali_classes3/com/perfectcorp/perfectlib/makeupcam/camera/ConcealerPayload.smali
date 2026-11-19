.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;->a:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->a:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->b:I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    return-void
.end method
