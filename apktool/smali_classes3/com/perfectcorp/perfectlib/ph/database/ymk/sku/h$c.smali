.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;


# instance fields
.field public final extraskuinfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;

.field public final room:Lcom/perfectcorp/perfectlib/ph/template/o$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/o$d;->a:Lcom/perfectcorp/perfectlib/ph/template/o$d;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;->room:Lcom/perfectcorp/perfectlib/ph/template/o$d;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;->extraskuinfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c$a;

    return-void
.end method
