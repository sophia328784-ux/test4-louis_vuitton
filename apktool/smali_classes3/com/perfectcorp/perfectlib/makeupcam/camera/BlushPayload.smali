.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Builder;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_MATTE:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-object p0

    :cond_0
    const-string v0, "blush_texture_shimmer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "blush_texture_satin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_MATTE:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_SATIN:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_SHIMMER:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "settings is empty"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
