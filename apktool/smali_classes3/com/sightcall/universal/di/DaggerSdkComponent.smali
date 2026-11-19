.class public final Lcom/sightcall/universal/di/DaggerSdkComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;,
        Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;,
        Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;,
        Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;,
        Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;,
        Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;-><init>(I)V

    return-object v0
.end method
