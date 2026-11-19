.class Lcom/networkbench/agent/impl/fragmentadapt/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/fragmentadapt/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static a:Lcom/networkbench/agent/impl/fragmentadapt/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/fragmentadapt/h$a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/fragmentadapt/h$a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/fragmentadapt/h$a;->a:Lcom/networkbench/agent/impl/fragmentadapt/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/networkbench/agent/impl/fragmentadapt/h$a;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/h$a;->a:Lcom/networkbench/agent/impl/fragmentadapt/h$a;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "EmptyIterator should not call this method directly"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
