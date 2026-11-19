.class public final Lcom/sightcall/universal/api/JsonApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/JsonApi$Wrapper;,
        Lcom/sightcall/universal/api/JsonApi$Linkage;,
        Lcom/sightcall/universal/api/JsonApi$Included;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
