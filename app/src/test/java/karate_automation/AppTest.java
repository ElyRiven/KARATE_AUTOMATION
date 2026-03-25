package karate_automation;

import com.intuit.karate.junit5.Karate;

class AppTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}
