.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    return-void
.end method
