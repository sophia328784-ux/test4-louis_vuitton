.class final Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/stream/LangCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector<",
        "TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field public final a:Ly80;

.field public final b:Ljava/util/Set;

.field public final c:Lz80;

.field public final d:Laa;

.field public final e:Lx80;


# direct methods
.method public constructor <init>(Lx80;Ly80;Lz80;Laa;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->e:Lx80;

    iput-object p2, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->a:Ly80;

    iput-object p3, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->c:Lz80;

    iput-object p4, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->d:Laa;

    iput-object p5, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->a:Ly80;

    return-object p0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->b:Ljava/util/Set;

    return-object p0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->c:Lz80;

    return-object p0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->d:Laa;

    return-object p0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;->e:Lx80;

    return-object p0
.end method
