.class public Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "ListRoot"

.field static final b:Ljava/lang/String; = "<ListRoot>"

.field static final c:Ljava/lang/String; = "</ListRoot>"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/h;
    .locals 8

    new-instance v0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/h;

    invoke-direct {v0}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/h;-><init>()V

    const-string v1, "<TotalQueue>(.*)</TotalQueue>\r?\n?<CurrentPlayList>\r?\n?<Name>(.*)</Name>\r?\n?</CurrentPlayList>"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/h;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/h;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "<List[0-9]+>"

    const-string v3, "<ListRoot>"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "</List[0-9]+>"

    const-string v3, "</ListRoot>"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "^<PlayListInfo>(.*)</PlayListInfo>$"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v5

    invoke-static {v7, v3, v6}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<Source>\u5929\u5929\u52a8\u542c</Source>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/ttpod/b;

    invoke-direct {v7, v6}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/ttpod/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v6

    goto :goto_2

    :cond_2
    const-string v7, "<Name>Pandora</Name>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/pandora/a;

    invoke-direct {v7, v6}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/pandora/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v7, "<Source>Pandora</Source>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/pandora/a;

    invoke-direct {v7, v6}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/pandora/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v7, "<Name>Douban</Name>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;

    invoke-direct {v7, v6}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-string v7, "<Source>Douban</Source>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;

    invoke-direct {v7, v6}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_7

    iget-object v7, v0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/h;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    return-object v0
.end method
