.class public final synthetic Lcom/perfectcorp/perfectlib/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/q4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/q4;->c:Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/q4;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q4;->c:Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lb21;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->patternGuids:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/z0;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Ld20;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lb21;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
