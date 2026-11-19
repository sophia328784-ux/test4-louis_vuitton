.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/idc/b$a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/b$a;-><init>()V

    const-class v2, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a()Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    return-void
.end method
