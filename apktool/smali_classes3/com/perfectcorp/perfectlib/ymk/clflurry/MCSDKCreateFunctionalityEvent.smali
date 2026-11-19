.class public final Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;
.super Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V
    .locals 2

    const-string v0, "MCSDK_Create_Functionality"

    const-string v1, "4"

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "functionality"

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    return-void
.end method
