.class public final Lcom/perfectcorp/perfectlib/ph/template/e$d;
.super Lcom/perfectcorp/perfectlib/ph/template/e$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/template/e$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/e$g;->a:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->c()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
