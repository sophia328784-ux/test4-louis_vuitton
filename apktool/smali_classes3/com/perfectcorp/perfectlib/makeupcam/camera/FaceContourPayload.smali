.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "highlight and contour setting are null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
