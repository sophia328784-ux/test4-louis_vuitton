.class public final Lcom/sightcall/mediacapture/StartMediaCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/StartMediaCapture;",
        "",
        "<init>",
        "()V",
        "forCameraPhoto",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;",
        "forGalleryPhoto",
        "forGalleryVideo",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sightcall/mediacapture/StartMediaCapture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/mediacapture/StartMediaCapture;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/StartMediaCapture;-><init>()V

    sput-object v0, Lcom/sightcall/mediacapture/StartMediaCapture;->INSTANCE:Lcom/sightcall/mediacapture/StartMediaCapture;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forCameraPhoto()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;
    .locals 13

    new-instance p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;-><init>(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->newInstance()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    move-result-object p0

    return-object p0
.end method

.method public final forGalleryPhoto()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;
    .locals 13

    new-instance p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;-><init>(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->newInstance()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    move-result-object p0

    return-object p0
.end method

.method public final forGalleryVideo()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;
    .locals 13

    new-instance p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;-><init>(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->newInstance()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    move-result-object p0

    return-object p0
.end method
