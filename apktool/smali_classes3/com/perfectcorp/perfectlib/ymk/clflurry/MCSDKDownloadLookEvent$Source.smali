.class public final enum Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAM:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

.field public static final enum STORE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

.field public static final enum UNKNOWN:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->UNKNOWN:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    const/4 v2, 0x1

    const-string v3, "store"

    const-string v4, "STORE"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->STORE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    const/4 v3, 0x2

    const-string v4, "cam"

    const-string v5, "CAM"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->CAM:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->b:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    return-object v0
.end method
