.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lorg/apache/commons/lang3/RandomUtils;

.field public static final c:Lsg0;

.field public static final d:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/lang3/RandomUtils;

    new-instance v1, Lsg0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lsg0;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->b:Lorg/apache/commons/lang3/RandomUtils;

    new-instance v0, Lsg0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lsg0;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->c:Lsg0;

    new-instance v0, Lsg0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lsg0;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->c:Lsg0;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/apache/commons/lang3/RandomUtils;->a:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RandomUtils [random="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/lang3/RandomUtils;->a:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
