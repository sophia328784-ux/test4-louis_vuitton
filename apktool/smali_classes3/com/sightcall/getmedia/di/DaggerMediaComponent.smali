.class public final Lcom/sightcall/getmedia/di/DaggerMediaComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;,
        Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;-><init>(I)V

    return-object v0
.end method
