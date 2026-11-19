.class public Lcom/batch/android/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/o/d$b;,
        Lcom/batch/android/o/d$c;
    }
.end annotation


# static fields
.field private static final a:I = 0xc8

.field private static final b:I = 0x40

.field private static final c:I = 0xa

.field private static final d:I = 0x14

.field private static final e:I = 0x800

.field private static final f:I = 0xc8

.field private static final g:I = 0x19

.field private static final h:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9_]{1,30}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/o/d;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;
    .locals 2

    .line 228
    const-string v0, "invalid attribute name \'"

    const-string v1, "\':"

    .line 229
    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v1, " object has been tampered with"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    .line 232
    :cond_0
    sget-object v1, Lcom/batch/android/o/d;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1

    .line 233
    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v1, " please make sure that the key is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 30 characters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/net/URI;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;
    .locals 2

    .line 267
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_0

    .line 268
    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "URL attributes cannot be longer than 2048 characters"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_2
    :goto_0
    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "URL attributes must follow the format \'scheme://[authority][path][?query][#fragment]\'"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0
.end method

.method private static a(Ljava/util/List;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/batch/android/o/d$b;",
            ")",
            "Lcom/batch/android/o/d$c;"
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Lcom/batch/android/o/d$b;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 264
    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "array attributes cannot be nested in more than three levels"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    .line 265
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v0, 0x19

    if-le p0, v0, :cond_1

    .line 266
    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "array attributes cannot have more than 25 elements"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/batch/android/BatchEventAttributes;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/BatchEventAttributes;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v1, Lcom/batch/android/o/d$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/batch/android/o/d$b;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/batch/android/o/d;->a(Lcom/batch/android/BatchEventAttributes;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object p0

    .line 225
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/o/d$c;

    .line 226
    invoke-virtual {v1}, Lcom/batch/android/o/d$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/batch/android/BatchEventAttributes;Lcom/batch/android/o/d$b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/BatchEventAttributes;",
            "Lcom/batch/android/o/d$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/batch/android/o/d$b;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "Object attributes cannot be nested in more than three levels"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getTags()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "$tags"

    const-string v3, "$label"

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/batch/android/o/d$c;

    invoke-virtual {p1, v3}, Lcom/batch/android/o/d$b;->a(Ljava/lang/String;)Lcom/batch/android/o/d$b;

    move-result-object v3

    const-string v4, "Labels are not allowed in sub-objects"

    invoke-direct {v0, v4, v3}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/batch/android/o/d$c;

    invoke-virtual {p1, v2}, Lcom/batch/android/o/d$b;->a(Ljava/lang/String;)Lcom/batch/android/o/d$b;

    move-result-object v2

    const-string v3, "Tags are not allowed in sub-objects"

    invoke-direct {v0, v3, v2}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/o/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/batch/android/o/d$b;->a(Ljava/lang/String;)Lcom/batch/android/o/d$b;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/batch/android/o/d;->a(Ljava/util/List;Lcom/batch/android/o/d$b;Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Lcom/batch/android/o/d$b;->a(Ljava/lang/String;)Lcom/batch/android/o/d$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/batch/android/o/d;->d(Ljava/util/List;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/batch/android/o/d;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_6

    new-instance v0, Lcom/batch/android/o/d$c;

    const-string v2, "objects cannot hold more than 20 attributes"

    invoke-direct {v0, v2, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/o/f;

    invoke-static {v2, p1}, Lcom/batch/android/o/d;->a(Ljava/lang/String;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v2}, Lcom/batch/android/o/d$b;->a(Ljava/lang/String;)Lcom/batch/android/o/d$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/batch/android/o/d;->a(Lcom/batch/android/o/f;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/batch/android/o/d;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    return-object v1
.end method

.method private static a(Lcom/batch/android/o/f;Lcom/batch/android/o/d$b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/o/f;",
            "Lcom/batch/android/o/d$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v1, Lcom/batch/android/o/d$c;

    const-string v2, "attribute is not of the right underlying type. this is an internal error and should be reported"

    invoke-direct {v1, v2, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    .line 236
    sget-object v2, Lcom/batch/android/o/d$a;->a:[I

    iget-object v3, p0, Lcom/batch/android/o/f;->b:Lcom/batch/android/l1/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object p0, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of v2, p0, Lcom/batch/android/BatchEventAttributes;

    if-eqz v2, :cond_0

    .line 238
    check-cast p0, Lcom/batch/android/BatchEventAttributes;

    invoke-static {p0, p1}, Lcom/batch/android/o/d;->a(Lcom/batch/android/BatchEventAttributes;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/o/d;->a(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 239
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 241
    check-cast v2, Ljava/util/List;

    .line 242
    invoke-static {v2, p1}, Lcom/batch/android/o/d;->a(Ljava/util/List;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 244
    :cond_1
    iget-object p0, p0, Lcom/batch/android/o/f;->b:Lcom/batch/android/l1/a;

    sget-object v3, Lcom/batch/android/l1/a;->m:Lcom/batch/android/l1/a;

    if-ne p0, v3, :cond_2

    .line 245
    :try_start_0
    invoke-static {v2, p1}, Lcom/batch/android/o/d;->b(Ljava/util/List;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/o/d;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 246
    :catch_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_2
    sget-object v3, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    if-ne p0, v3, :cond_4

    .line 248
    :try_start_1
    invoke-static {v2, p1}, Lcom/batch/android/o/d;->c(Ljava/util/List;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/o/d;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 249
    :catch_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 251
    :pswitch_2
    iget-object p0, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Long;

    if-nez p0, :cond_4

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 253
    :pswitch_3
    iget-object p0, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Boolean;

    if-nez p0, :cond_4

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 255
    :pswitch_4
    iget-object p0, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Number;

    if-nez p0, :cond_4

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object v0

    .line 257
    :pswitch_5
    iget-object p0, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 258
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/batch/android/o/d;->b(Ljava/lang/String;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/o/d;->a(Lcom/batch/android/o/d$c;Ljava/util/List;)V

    return-object v0

    .line 259
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 260
    :pswitch_6
    iget-object p0, p0, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    instance-of v2, p0, Ljava/net/URI;

    if-eqz v2, :cond_6

    .line 261
    check-cast p0, Ljava/net/URI;

    invoke-static {p0, p1}, Lcom/batch/android/o/d;->a(Ljava/net/URI;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/o/d;->a(Lcom/batch/android/o/d$c;Ljava/util/List;)V

    return-object v0

    .line 262
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/batch/android/o/d$c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/o/d$c;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 273
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/batch/android/o/d$b;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/batch/android/o/d$b;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;)V"
        }
    .end annotation

    .line 271
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    new-instance v1, Lcom/batch/android/o/d$c;

    invoke-direct {v1, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 227
    sget-object v0, Lcom/batch/android/o/d;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "string attribute cannot be empty or made of whitespace"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "string attribute cannot be longer than 200 characters"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    :cond_1
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/batch/android/o/d$c;

    const-string v0, "string attribute cannot be multiline"

    invoke-direct {p0, v0, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 59
    const-string v1, "cannot be longer than 200 characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "cannot be empty or only made of whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 63
    const-string p0, "cannot be multiline"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static b(Ljava/util/List;Lcom/batch/android/o/d$b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchEventAttributes;",
            ">;",
            "Lcom/batch/android/o/d$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/BatchEventAttributes;

    .line 55
    invoke-virtual {p1, v1}, Lcom/batch/android/o/d$b;->a(I)Lcom/batch/android/o/d$b;

    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Lcom/batch/android/o/d;->a(Lcom/batch/android/BatchEventAttributes;Lcom/batch/android/o/d$b;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/batch/android/o/d;->a(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "tag cannot be empty or made of whitespace"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const-string p0, "tag cannot be longer than 64"

    return-object p0

    :cond_1
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "tag cannot be multiline"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/util/List;Lcom/batch/android/o/d$b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/batch/android/o/d$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v1}, Lcom/batch/android/o/d$b;->a(I)Lcom/batch/android/o/d$b;

    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lcom/batch/android/o/d;->b(Ljava/lang/String;Lcom/batch/android/o/d$b;)Lcom/batch/android/o/d$c;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/batch/android/o/d;->a(Lcom/batch/android/o/d$c;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static d(Ljava/util/List;Lcom/batch/android/o/d$b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/batch/android/o/d$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/o/d$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/batch/android/o/d$c;

    const-string v2, "must not contain more than 10 values"

    invoke-direct {v1, v2, p1}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/batch/android/o/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/batch/android/o/d$c;

    invoke-virtual {p1, v1}, Lcom/batch/android/o/d$b;->a(I)Lcom/batch/android/o/d$b;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/batch/android/o/d$c;-><init>(Ljava/lang/String;Lcom/batch/android/o/d$b;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
