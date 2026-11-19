.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;
    }
.end annotation


# instance fields
.field private final backgroundSetting:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->backgroundSetting:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->backgroundSetting:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "background setting are null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->backgroundSetting:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    return-object p0
.end method

.method public final c(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->backgroundSetting:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->backgroundSetting:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
