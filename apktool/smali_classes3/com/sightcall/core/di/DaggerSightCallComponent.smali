.class public final Lcom/sightcall/core/di/DaggerSightCallComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/core/di/DaggerSightCallComponent$Factory;,
        Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factory()Lcom/sightcall/core/di/SightCallComponent$Factory;
    .locals 2

    new-instance v0, Lcom/sightcall/core/di/DaggerSightCallComponent$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/core/di/DaggerSightCallComponent$Factory;-><init>(I)V

    return-object v0
.end method
