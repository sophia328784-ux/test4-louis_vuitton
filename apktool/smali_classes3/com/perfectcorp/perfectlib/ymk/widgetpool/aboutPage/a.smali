.class public Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a$a;->a:Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a;->a:Ljava/lang/String;

    return-object v0
.end method
