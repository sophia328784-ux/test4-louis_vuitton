.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/template/idc/g;


# instance fields
.field public final attr_guid:Ljava/lang/String;

.field public final attr_thumbnail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/g;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_thumbnail:Ljava/lang/String;

    return-void
.end method
