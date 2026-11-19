.class public final Lcom/sightcall/libraries/rx/Optional$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/libraries/rx/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u0006J\u001f\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\u0008\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\tJ&\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0006\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sightcall/libraries/rx/Optional$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/sightcall/libraries/rx/Optional;",
        "T",
        "of",
        "value",
        "(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;",
        "ofNullable",
        "rx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/libraries/rx/Optional$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lcom/sightcall/libraries/rx/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/sightcall/libraries/rx/Optional;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sightcall/libraries/rx/Optional;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final of(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/sightcall/libraries/rx/Optional;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sightcall/libraries/rx/Optional;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final ofNullable(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {v0, p1}, Lcom/sightcall/libraries/rx/Optional$Companion;->of(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->empty()Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method
