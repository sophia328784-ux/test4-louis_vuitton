.class public final Lcom/perfectcorp/perfectlib/ph/template/o$d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/template/o$d;


# instance fields
.field public final attr_version:Ljava/lang/String;

.field public final skus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/o$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/o$d;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/o$d;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/o$d;->a:Lcom/perfectcorp/perfectlib/ph/template/o$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$d;->attr_version:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$d;->skus:Ljava/util/List;

    return-void
.end method
