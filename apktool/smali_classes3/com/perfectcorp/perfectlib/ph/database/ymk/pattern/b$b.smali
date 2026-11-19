.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    return-void
.end method
