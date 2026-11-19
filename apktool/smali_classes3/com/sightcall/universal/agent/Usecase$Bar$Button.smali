.class public Lcom/sightcall/universal/agent/Usecase$Bar$Button;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase$Bar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sightcall/universal/agent/Usecase$Bar$Button;",
        ">;"
    }
.end annotation


# instance fields
.field public final position:I
    .annotation runtime Lcom/sightcall/universal/api/FallbackOnNull;
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "position"
    .end annotation
.end field

.field public final role:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "role"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->role:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->role:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->position:I

    return-void
.end method

.method private static intCompare(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/sightcall/universal/agent/Usecase$Bar$Button;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->position:I

    iget p1, p1, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->position:I

    invoke-static {p0, p1}, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->intCompare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/sightcall/universal/agent/Usecase$Bar$Button;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Usecase$Bar$Button;->compareTo(Lcom/sightcall/universal/agent/Usecase$Bar$Button;)I

    move-result p0

    return p0
.end method
