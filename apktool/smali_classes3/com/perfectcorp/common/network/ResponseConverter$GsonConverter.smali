.class public final Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/ResponseConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/network/ResponseConverter<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

.field public final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/gson/Gson;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;->b:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p0, p0, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
