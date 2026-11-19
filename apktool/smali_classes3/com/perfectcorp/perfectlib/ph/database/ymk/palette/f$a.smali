.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v0, "shimmer_color"

    invoke-static {p0, v0}, Lcom/perfectcorp/common/gson/GsonHelper;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
