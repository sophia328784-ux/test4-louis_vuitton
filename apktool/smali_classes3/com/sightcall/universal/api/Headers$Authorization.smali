.class public final Lcom/sightcall/universal/api/Headers$Authorization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Authorization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;,
        Lcom/sightcall/universal/api/Headers$Authorization$Bearer;,
        Lcom/sightcall/universal/api/Headers$Authorization$External;,
        Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;,
        Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0005\t\n\u000b\u000c\rB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/universal/api/Headers$Authorization;",
        "",
        "<init>",
        "()V",
        "Raw",
        "",
        "Token",
        "Hash",
        "AuthV3",
        "Bearer",
        "PlaneTokenV3",
        "ApiKey",
        "TokenReference",
        "External",
        "sdk_installedRelease"
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
.field public static final AuthV3:Ljava/lang/String; = "Authorization"

.field public static final Hash:Ljava/lang/String; = "X-Authorization-Hash"

.field public static final INSTANCE:Lcom/sightcall/universal/api/Headers$Authorization;

.field public static final Raw:Ljava/lang/String; = "X-Authorization"

.field public static final Token:Ljava/lang/String; = "X-Authorization-Token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/api/Headers$Authorization;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Headers$Authorization;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Headers$Authorization;->INSTANCE:Lcom/sightcall/universal/api/Headers$Authorization;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
