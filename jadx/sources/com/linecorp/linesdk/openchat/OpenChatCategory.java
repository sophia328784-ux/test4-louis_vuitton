package com.linecorp.linesdk.openchat;

import com.batch.android.s.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b!\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"¨\u0006#"}, d2 = {"Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "", "", b.a.f24015b, "I", "a", "()I", "resourceId", NBSSpanMetricUnit.Bit, "NotSelected", "School", "Friend", "Company", "Organization", "Region", "Baby", "Sports", "Game", "Book", "Movies", "Photo", "Art", "Animation", "Music", "Tv", "Celebrity", "Food", "Travel", "Pet", "Car", "Fashion", "Health", "Finance", "Study", "Etc", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public enum OpenChatCategory {
    NotSelected(1, R.string.square_create_category_notselected),
    School(2, R.string.square_create_category_school),
    Friend(7, R.string.square_create_category_friend),
    Company(5, R.string.square_create_category_company),
    Organization(6, R.string.square_create_category_org),
    Region(8, R.string.square_create_category_region),
    Baby(28, R.string.square_create_category_baby),
    Sports(16, R.string.square_create_category_sports),
    Game(17, R.string.square_create_category_game),
    Book(29, R.string.square_create_category_book),
    Movies(30, R.string.square_create_category_movies),
    Photo(37, R.string.square_create_category_photo),
    Art(41, R.string.square_create_category_art),
    Animation(22, R.string.square_create_category_ani),
    Music(33, R.string.square_create_category_music),
    Tv(24, R.string.square_create_category_tv),
    Celebrity(26, R.string.square_create_category_celebrity),
    Food(12, R.string.square_create_category_food),
    Travel(18, R.string.square_create_category_travel),
    Pet(27, R.string.square_create_category_pet),
    Car(19, R.string.square_create_category_car),
    Fashion(20, R.string.square_create_category_fashion),
    Health(23, R.string.square_create_category_health),
    Finance(40, R.string.square_create_category_finance),
    Study(11, R.string.square_create_category_study),
    Etc(35, R.string.square_create_category_etc);

    private final int id;
    private final int resourceId;

    OpenChatCategory(int i2, int i3) {
        this.id = i2;
        this.resourceId = i3;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getResourceId() {
        return this.resourceId;
    }
}
