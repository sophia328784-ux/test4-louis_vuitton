.class public final Lcom/sightcall/universal/ar/ArStart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ar/ArStart$Unit;
    }
.end annotation


# instance fields
.field private final unit:Lcom/sightcall/universal/ar/ArStart$Unit;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "unit"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/ar/ArStart$Unit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArStart;->unit:Lcom/sightcall/universal/ar/ArStart$Unit;

    return-void
.end method


# virtual methods
.method public unit()Lcom/sightcall/universal/ar/ArStart$Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArStart;->unit:Lcom/sightcall/universal/ar/ArStart$Unit;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/ar/ArStart$Unit;->METRIC:Lcom/sightcall/universal/ar/ArStart$Unit;

    return-object p0
.end method
