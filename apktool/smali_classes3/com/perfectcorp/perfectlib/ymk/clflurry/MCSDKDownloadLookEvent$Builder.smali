.class public final Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

.field public e:J


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->UNKNOWN:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent;

    const-string v1, "MCSDK_download_look"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ver"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->a(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "look_guid"

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "size"

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->e:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->b(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void
.end method

.method public final b(J)V
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%1.3f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->c:Ljava/lang/String;

    return-void
.end method
