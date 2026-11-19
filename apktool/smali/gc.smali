.class public final synthetic Lgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lgc;->b:I

    iput-object p1, p0, Lgc;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lgc;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lgc;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    iput-object p0, v0, Landroidx/navigation/NavDeepLink$Builder;->a:Ljava/lang/String;

    new-instance p0, Landroidx/navigation/NavDeepLink;

    iget-object v1, v0, Landroidx/navigation/NavDeepLink$Builder;->a:Ljava/lang/String;

    iget-object v2, v0, Landroidx/navigation/NavDeepLink$Builder;->b:Ljava/lang/String;

    iget-object v0, v0, Landroidx/navigation/NavDeepLink$Builder;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    const-string v0, "/api/publication/freecaster/"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string v0, "lv-app-configuration"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
