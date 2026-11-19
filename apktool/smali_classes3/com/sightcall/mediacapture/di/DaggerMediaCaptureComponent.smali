.class public final Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;,
        Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;-><init>(I)V

    return-object v0
.end method
