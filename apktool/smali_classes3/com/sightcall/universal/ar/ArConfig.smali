.class public Lcom/sightcall/universal/ar/ArConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final unit:Lcom/sightcall/universal/ar/ArUnit;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/ar/ArUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArConfig;->unit:Lcom/sightcall/universal/ar/ArUnit;

    return-void
.end method

.method public static with(Lcom/sightcall/universal/ar/ArStart;)Lcom/sightcall/universal/ar/ArConfig;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/sightcall/universal/ar/ArConfig;

    sget-object v0, Lcom/sightcall/universal/ar/ArUnit;->METRIC:Lcom/sightcall/universal/ar/ArUnit;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/ar/ArConfig;-><init>(Lcom/sightcall/universal/ar/ArUnit;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/ar/ArConfig$1;->$SwitchMap$com$sightcall$universal$ar$ArStart$Unit:[I

    invoke-virtual {p0}, Lcom/sightcall/universal/ar/ArStart;->unit()Lcom/sightcall/universal/ar/ArStart$Unit;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    new-instance p0, Lcom/sightcall/universal/ar/ArConfig;

    sget-object v0, Lcom/sightcall/universal/ar/ArUnit;->METRIC:Lcom/sightcall/universal/ar/ArUnit;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/ar/ArConfig;-><init>(Lcom/sightcall/universal/ar/ArUnit;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/sightcall/universal/ar/ArConfig;

    sget-object v0, Lcom/sightcall/universal/ar/ArUnit;->IMPERIAL:Lcom/sightcall/universal/ar/ArUnit;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/ar/ArConfig;-><init>(Lcom/sightcall/universal/ar/ArUnit;)V

    return-object p0
.end method
