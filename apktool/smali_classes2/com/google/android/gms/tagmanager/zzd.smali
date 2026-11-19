.class final Lcom/google/android/gms/tagmanager/zzd;
.super Lcom/google/android/gms/tagmanager/zzg;
.source "SourceFile"


# virtual methods
.method public final N(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    sget-object p0, Lcom/google/android/gms/tagmanager/zze;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-class p2, Lcom/google/android/gms/tagmanager/CustomTagProvider;

    invoke-static {p2, p1}, Lcom/google/android/gms/tagmanager/zze;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/tagmanager/CustomTagProvider;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/tagmanager/CustomTagProvider;

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/android/gms/tagmanager/CustomTagProvider;->execute()V

    :cond_1
    return-void
.end method

.method public final f2(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/google/android/gms/tagmanager/zze;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-class p2, Lcom/google/android/gms/tagmanager/CustomVariableProvider;

    invoke-static {p2, p1}, Lcom/google/android/gms/tagmanager/zze;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/tagmanager/CustomVariableProvider;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/tagmanager/CustomVariableProvider;

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/android/gms/tagmanager/CustomVariableProvider;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
