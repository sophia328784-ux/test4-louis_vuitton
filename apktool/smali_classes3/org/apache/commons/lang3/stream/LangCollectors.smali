.class public abstract Lorg/apache/commons/lang3/stream/LangCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lorg/apache/commons/lang3/stream/LangCollectors;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;Laa;)Ljava/util/stream/Collector;
    .locals 6

    new-instance v0, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;

    new-instance v1, Lx80;

    invoke-direct {v1, p0}, Lx80;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Ly80;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lz80;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Laa;

    const/4 p0, 0x2

    invoke-direct {v4, p0}, Laa;-><init>(I)V

    sget-object v5, Lorg/apache/commons/lang3/stream/LangCollectors;->a:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;-><init>(Lx80;Ly80;Lz80;Laa;Ljava/util/Set;)V

    return-object v0
.end method
