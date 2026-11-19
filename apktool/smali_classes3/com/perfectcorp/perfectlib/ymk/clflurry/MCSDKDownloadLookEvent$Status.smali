.class public final enum Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

.field public static final enum COMPLETE_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

.field public static final enum FAIL_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

.field public static final enum LOOK_AVAILABLE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

.field public static final enum START_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

.field private static final synthetic c:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    const-string v1, "CLICK_DOWNLOAD"

    const/4 v2, 0x0

    const-string v3, "click_download"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->CLICK_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    const-string v2, "start_download"

    const-string v3, "diff_time_1"

    const-string v5, "START_DOWNLOAD"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->START_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    const-string v3, "complete_download"

    const-string v5, "diff_time_2"

    const-string v6, "COMPLETE_DOWNLOAD"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v5}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->COMPLETE_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    const-string v5, "look_available"

    const-string v6, "diff_time_3"

    const-string v7, "LOOK_AVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v5, v6}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->LOOK_AVAILABLE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    new-instance v5, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    const/4 v6, 0x4

    const-string v7, "fail_download"

    const-string v8, "FAIL_DOWNLOAD"

    invoke-direct {v5, v8, v6, v7, v4}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->FAIL_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    filled-new-array {v0, v1, v2, v3, v5}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->c:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->c:[Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    return-object v0
.end method
