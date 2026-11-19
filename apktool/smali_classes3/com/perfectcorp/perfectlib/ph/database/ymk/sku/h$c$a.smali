.class final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;


# instance fields
.field public final editMode:Z

.field public final liveMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;->editMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;->liveMode:Z

    return-void
.end method
