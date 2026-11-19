.class public final synthetic Lb8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;I)V
    .locals 0

    iput p2, p0, Lb8;->b:I

    iput-object p1, p0, Lb8;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb8;->b:I

    iget-object p0, p0, Lb8;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/LookHandler;->d(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/LookHandler;->d(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    sget-object p1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->B(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
