.class public abstract Lcom/sightcall/sharemedia/ShareMediaDialog$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/sharemedia/ShareMediaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;,
        Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;,
        Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;,
        Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0004\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;",
        "",
        "<init>",
        "()V",
        "PhotoFromCamera",
        "PhotoFromGallery",
        "VideoFromGallery",
        "Cancelled",
        "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;",
        "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;",
        "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;",
        "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;",
        "sharemedia_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/sharemedia/ShareMediaDialog$Result;-><init>()V

    return-void
.end method
