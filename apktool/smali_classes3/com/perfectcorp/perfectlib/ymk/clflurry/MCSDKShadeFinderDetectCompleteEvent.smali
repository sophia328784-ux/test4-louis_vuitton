.class public final Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKShadeFinderDetectCompleteEvent;
.super Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MCSDK_ShadeFinder_Detect_Complete"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    return-void
.end method
