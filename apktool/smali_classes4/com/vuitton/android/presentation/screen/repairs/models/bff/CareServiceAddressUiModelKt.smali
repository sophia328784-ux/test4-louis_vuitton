.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "\n"

    if-lez v7, :cond_0

    invoke-static {v0, v8, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0, v8, p0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {v0, v8, v6}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-static {v0, v8, v5}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, ", "

    invoke-static {v0, p0, v4}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, " "

    invoke-static {v0, p0, v3}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6

    invoke-static {v0, v8, v2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method
