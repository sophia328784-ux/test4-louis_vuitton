.class public final Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/KTX1Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndirectLightBundle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;",
        "",
        "Lcom/google/android/filament/IndirectLight;",
        "indirectLight",
        "Lcom/google/android/filament/Texture;",
        "cubemap",
        "<init>",
        "(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V",
        "filament-utils-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/Texture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;->a:Lcom/google/android/filament/Texture;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V

    return-void
.end method
