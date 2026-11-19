.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;I)V

    return-object v0
.end method
