.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;


# instance fields
.field public final itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

.field public final pattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final wearingStyle:Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->wearingStyle:Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->pattern:Ljava/util/List;

    return-void
.end method
