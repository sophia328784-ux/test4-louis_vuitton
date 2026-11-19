.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;",
        "",
        "mediaCaptureParameters",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "<init>",
        "(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V",
        "getMediaCaptureParameters",
        "()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "newInstance",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;",
        "Companion",
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
.field public static final Companion:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args$Companion;

.field private static final MEDIA_CONFIG:Ljava/lang/String; = "com.sightcall.mediacapture.presenter.MediaCaptureFragment.MEDIA_CONFIG"


# instance fields
.field private final mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->Companion:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    return-void
.end method


# virtual methods
.method public final getMediaCaptureParameters()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    return-object p0
.end method

.method public final newInstance()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;
    .locals 3

    new-instance v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.sightcall.mediacapture.presenter.MediaCaptureFragment.MEDIA_CONFIG"

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
